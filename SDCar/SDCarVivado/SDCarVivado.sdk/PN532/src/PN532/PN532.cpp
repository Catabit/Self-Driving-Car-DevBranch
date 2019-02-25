/**************************************************************************/
/*!
    @file     PN532.cpp
    @author   Adafruit Industries & Seeed Studio
    @license  BSD
*/
/**************************************************************************/

#include "Arduino.h"
#include "PN532.h"
#include "PN532_debug.h"
#include <string.h>

#define HAL(func)   (_interface->func)

PN532::PN532(PN532Interface &interface)
{
    _interface = &interface;
}

/**************************************************************************/
/*!
    @brief  Setups the HW
*/
/**************************************************************************/
void PN532::begin()
{
    HAL(begin)();
    HAL(wakeup)();
}

/**************************************************************************/
/*!
    @brief  Prints a hexadecimal value in plain characters

    @param  data      Pointer to the uint8_t data
    @param  numBytes  Data length in bytes
*/
/**************************************************************************/
void PN532::PrintHex(const uint8_t *data, const uint32_t numBytes)
{
    for (uint8_t i = 0; i < numBytes; i++) {
        printf(" %2X", data[i]);
    }
    printf("\n");
}

/**************************************************************************/
/*!
    @brief  Prints a hexadecimal value in plain characters, along with
            the char equivalents in the following format

            00 00 00 00 00 00  ......

    @param  data      Pointer to the data
    @param  numBytes  Data length in bytes
*/
/**************************************************************************/
void PN532::PrintHexChar(const uint8_t *data, const uint32_t numBytes)
{
    for (uint8_t i = 0; i < numBytes; i++) {
        printf(" %2X", data[i]);
    }
    printf("    ");
    for (uint8_t i = 0; i < numBytes; i++) {
        char c = data[i];
        if (c <= 0x1f || c > 0x7f) {
            printf(".");
        } else {
            printf("%c", c);
        }
        printf("\n");
    }
}

/**************************************************************************/
/*!
    @brief  Checks the firmware version of the PN5xx chip

    @returns  The chip's firmware version and ID
*/
/**************************************************************************/
uint32_t PN532::getFirmwareVersion(void)
{
    uint32_t response;

    pn532_packetbuffer[0] = PN532_COMMAND_GETFIRMWAREVERSION;

    if (HAL(writeCommand)(pn532_packetbuffer, 1)) {
        return 0;
    }

    // read data packet
    int16_t status = HAL(readResponse)(pn532_packetbuffer, sizeof(pn532_packetbuffer));
    if (0 > status) {
        return 0;
    }

    response = pn532_packetbuffer[0];
    response <<= 8;
    response |= pn532_packetbuffer[1];
    response <<= 8;
    response |= pn532_packetbuffer[2];
    response <<= 8;
    response |= pn532_packetbuffer[3];

    return response;
}


/**************************************************************************/
/*!
    @brief  Read a PN532 register.

    @param  reg  the 16-bit register address.

    @returns  The register value.
*/
/**************************************************************************/
uint32_t PN532::readRegister(uint16_t reg)
{
    uint32_t response;

    pn532_packetbuffer[0] = PN532_COMMAND_READREGISTER;
    pn532_packetbuffer[1] = (reg >> 8) & 0xFF;
    pn532_packetbuffer[2] = reg & 0xFF;

    if (HAL(writeCommand)(pn532_packetbuffer, 3)) {
        return 0;
    }

    // read data packet
    int16_t status = HAL(readResponse)(pn532_packetbuffer, sizeof(pn532_packetbuffer));
    if (0 > status) {
        return 0;
    }

    response = pn532_packetbuffer[0];

    return response;
}

/**************************************************************************/
/*!
    @brief  Write to a PN532 register.

    @param  reg  the 16-bit register address.
    @param  val  the 8-bit value to write.

    @returns  0 for failure, 1 for success.
*/
/**************************************************************************/
uint32_t PN532::writeRegister(uint16_t reg, uint8_t val)
{
    uint32_t response;

    pn532_packetbuffer[0] = PN532_COMMAND_WRITEREGISTER;
    pn532_packetbuffer[1] = (reg >> 8) & 0xFF;
    pn532_packetbuffer[2] = reg & 0xFF;
    pn532_packetbuffer[3] = val;


    if (HAL(writeCommand)(pn532_packetbuffer, 4)) {
        return 0;
    }

    // read data packet
    int16_t status = HAL(readResponse)(pn532_packetbuffer, sizeof(pn532_packetbuffer));
    if (0 > status) {
        return 0;
    }

    return 1;
}


/**************************************************************************/
/*!
    @brief  Configures the SAM (Secure Access Module)
*/
/**************************************************************************/
bool PN532::SAMConfig(void)
{
    pn532_packetbuffer[0] = PN532_COMMAND_SAMCONFIGURATION;
    pn532_packetbuffer[1] = 0x01; // normal mode;
    pn532_packetbuffer[2] = 0x14; // timeout 50ms * 20 = 1 second
    pn532_packetbuffer[3] = 0x01; // use IRQ pin!

    DMSG("SAMConfig\n");

    if (HAL(writeCommand)(pn532_packetbuffer, 4))
        return false;

    return (0 < HAL(readResponse)(pn532_packetbuffer, sizeof(pn532_packetbuffer)));
}

/**************************************************************************/
/*!
    Sets the MxRtyPassiveActivation uint8_t of the RFConfiguration register

    @param  maxRetries    0xFF to wait forever, 0x00..0xFE to timeout
                          after mxRetries

    @returns 1 if everything executed properly, 0 for an error
*/
/**************************************************************************/
bool PN532::setPassiveActivationRetries(uint8_t maxRetries)
{
    pn532_packetbuffer[0] = PN532_COMMAND_RFCONFIGURATION;
    pn532_packetbuffer[1] = 5;    // Config item 5 (MaxRetries)
    pn532_packetbuffer[2] = 0xFF; // MxRtyATR (default = 0xFF)
    pn532_packetbuffer[3] = 0x01; // MxRtyPSL (default = 0x01)
    pn532_packetbuffer[4] = maxRetries;

    if (HAL(writeCommand)(pn532_packetbuffer, 5))
        return 0x0;  // no ACK

    return (0 < HAL(readResponse)(pn532_packetbuffer, sizeof(pn532_packetbuffer)));
}

/**************************************************************************/
/*!
    Sets the RFon/off uint8_t of the RFConfiguration register

    @param  autoRFCA    0x00 No check of the external field before 
                        activation 
                        
                        0x02 Check the external field before 
                        activation

    @param  rFOnOff     0x00 Switch the RF field off, 0x01 switch the RF 
                        field on

    @returns    1 if everything executed properly, 0 for an error
*/
/**************************************************************************/

bool PN532::setRFField(uint8_t autoRFCA, uint8_t rFOnOff)
{
    pn532_packetbuffer[0] = PN532_COMMAND_RFCONFIGURATION;
    pn532_packetbuffer[1] = 1;
    pn532_packetbuffer[2] = 0x00 | autoRFCA | rFOnOff;  

    if (HAL(writeCommand)(pn532_packetbuffer, 3)) {
        return 0x0;  // command failed
    }

    return (0 < HAL(readResponse)(pn532_packetbuffer, sizeof(pn532_packetbuffer)));
}

/***** ISO14443A Commands ******/

/**************************************************************************/
/*!
    Waits for an ISO14443A target to enter the field

    @param  cardBaudRate  Baud rate of the card
    @param  uid           Pointer to the array that will be populated
                          with the card's UID (up to 7 bytes)
    @param  uidLength     Pointer to the variable that will hold the
                          length of the card's UID.

    @returns 1 if everything executed properly, 0 for an error
*/
/**************************************************************************/
bool PN532::readPassiveTargetID(uint8_t cardbaudrate, uint8_t *uid, uint8_t *uidLength, uint16_t timeout)
{
    pn532_packetbuffer[0] = PN532_COMMAND_INLISTPASSIVETARGET;
    pn532_packetbuffer[1] = 1;  // max 1 cards at once (we can set this to 2 later)
    pn532_packetbuffer[2] = cardbaudrate;

    if (HAL(writeCommand)(pn532_packetbuffer, 3)) {
        return 0x0;  // command failed
    }

    // read data packet
    if (HAL(readResponse)(pn532_packetbuffer, sizeof(pn532_packetbuffer), timeout) < 0) {
        return 0x0;
    }

    // check some basic stuff
    /* ISO14443A card response should be in the following format:

      byte            Description
      -------------   ------------------------------------------
      b0              Tags Found
      b1              Tag Number (only one used in this example)
      b2..3           SENS_RES
      b4              SEL_RES
      b5              NFCID Length
      b6..NFCIDLen    NFCID
    */

    if (pn532_packetbuffer[0] != 1)
        return 0;

    uint16_t sens_res = pn532_packetbuffer[2];
    sens_res <<= 8;
    sens_res |= pn532_packetbuffer[3];

    DMSG("ATQA: 0x");  DMSG_HEX(sens_res);
    DMSG("SAK: 0x");  DMSG_HEX(pn532_packetbuffer[4]);
    DMSG("\n");

    /* Card appears to be Mifare Classic */
    *uidLength = pn532_packetbuffer[5];

    for (uint8_t i = 0; i < pn532_packetbuffer[5]; i++) {
        uid[i] = pn532_packetbuffer[6 + i];
    }

    return 1;
}


/***** Mifare Classic Functions ******/

/**************************************************************************/
/*!
      Indicates whether the specified block number is the first block
      in the sector (block 0 relative to the current sector)
*/
/**************************************************************************/
bool PN532::mifareclassic_IsFirstBlock (uint32_t uiBlock)
{
    // Test if we are in the small or big sectors
    if (uiBlock < 128)
        return ((uiBlock) % 4 == 0);
    else
        return ((uiBlock) % 16 == 0);
}

/**************************************************************************/
/*!
      Indicates whether the specified block number is the sector trailer
*/
/**************************************************************************/
bool PN532::mifareclassic_IsTrailerBlock (uint32_t uiBlock)
{
    // Test if we are in the small or big sectors
    if (uiBlock < 128)
        return ((uiBlock + 1) % 4 == 0);
    else
        return ((uiBlock + 1) % 16 == 0);
}

/**************************************************************************/
/*!
    Tries to authenticate a block of memory on a MIFARE card using the
    INDATAEXCHANGE command.  See section 7.3.8 of the PN532 User Manual
    for more information on sending MIFARE and other commands.

    @param  uid           Pointer to a byte array containing the card UID
    @param  uidLen        The length (in bytes) of the card's UID (Should
                          be 4 for MIFARE Classic)
    @param  blockNumber   The block number to authenticate.  (0..63 for
                          1KB cards, and 0..255 for 4KB cards).
    @param  keyNumber     Which key type to use during authentication
                          (0 = MIFARE_CMD_AUTH_A, 1 = MIFARE_CMD_AUTH_B)
    @param  keyData       Pointer to a byte array containing the 6 bytes
                          key value

    @returns 1 if everything executed properly, 0 for an error
*/
/**************************************************************************/
uint8_t PN532::mifareclassic_AuthenticateBlock (uint8_t *uid, uint8_t uidLen, uint32_t blockNumber, uint8_t keyNumber, uint8_t *keyData)
{
    uint8_t i;

    // Hang on to the key and uid data
    memcpy (_key, keyData, 6);
    memcpy (_uid, uid, uidLen);
    _uidLen = uidLen;

    // Prepare the authentication command //
    pn532_packetbuffer[0] = PN532_COMMAND_INDATAEXCHANGE;   /* Data Exchange Header */
    pn532_packetbuffer[1] = 1;                              /* Max card numbers */
    pn532_packetbuffer[2] = (keyNumber) ? MIFARE_CMD_AUTH_B : MIFARE_CMD_AUTH_A;
    pn532_packetbuffer[3] = blockNumber;                    /* Block Number (1K = 0..63, 4K = 0..255 */
    memcpy (pn532_packetbuffer + 4, _key, 6);
    for (i = 0; i < _uidLen; i++) {
        pn532_packetbuffer[10 + i] = _uid[i];              /* 4 bytes card ID */
    }

    if (HAL(writeCommand)(pn532_packetbuffer, 10 + _uidLen))
        return 0;

    // Read the response packet
    HAL(readResponse)(pn532_packetbuffer, sizeof(pn532_packetbuffer));

    // Check if the response is valid and we are authenticated???
    // for an auth success it should be bytes 5-7: 0xD5 0x41 0x00
    // Mifare auth error is technically byte 7: 0x14 but anything other and 0x00 is not good
    if (pn532_packetbuffer[0] != 0x00) {
        DMSG("Authentification failed\n");
        return 0;
    }

    return 1;
}

/**************************************************************************/
/*!
    Tries to read an entire 16-bytes data block at the specified block
    address.

    @param  blockNumber   The block number to authenticate.  (0..63 for
                          1KB cards, and 0..255 for 4KB cards).
    @param  data          Pointer to the byte array that will hold the
                          retrieved data (if any)

    @returns 1 if everything executed properly, 0 for an error
*/
/**************************************************************************/
uint8_t PN532::mifareclassic_ReadDataBlock (uint8_t blockNumber, uint8_t *data)
{
    DMSG("Trying to read 16 bytes from block ");
    DMSG_INT(blockNumber);

    /* Prepare the command */
    pn532_packetbuffer[0] = PN532_COMMAND_INDATAEXCHANGE;
    pn532_packetbuffer[1] = 1;                      /* Card number */
    pn532_packetbuffer[2] = MIFARE_CMD_READ;        /* Mifare Read command = 0x30 */
    pn532_packetbuffer[3] = blockNumber;            /* Block Number (0..63 for 1K, 0..255 for 4K) */

    /* Send the command */
    if (HAL(writeCommand)(pn532_packetbuffer, 4)) {
        return 0;
    }

    /* Read the response packet */
    HAL(readResponse)(pn532_packetbuffer, sizeof(pn532_packetbuffer));

    /* If byte 8 isn't 0x00 we probably have an error */
    if (pn532_packetbuffer[0] != 0x00) {
        return 0;
    }

    /* Copy the 16 data bytes to the output buffer        */
    /* Block content starts at byte 9 of a valid response */
    memcpy (data, pn532_packetbuffer + 1, 16);

    return 1;
}

/**************************************************************************/
/*!
    Tries to write an entire 16-bytes data block at the specified block
    address.

    @param  blockNumber   The block number to authenticate.  (0..63 for
                          1KB cards, and 0..255 for 4KB cards).
    @param  data          The byte array that contains the data to write.

    @returns 1 if everything executed properly, 0 for an error
*/
/**************************************************************************/
uint8_t PN532::mifareclassic_WriteDataBlock (uint8_t blockNumber, uint8_t *data)
{
    /* Prepare the first command */
    pn532_packetbuffer[0] = PN532_COMMAND_INDATAEXCHANGE;
    pn532_packetbuffer[1] = 1;                      /* Card number */
    pn532_packetbuffer[2] = MIFARE_CMD_WRITE;       /* Mifare Write command = 0xA0 */
    pn532_packetbuffer[3] = blockNumber;            /* Block Number (0..63 for 1K, 0..255 for 4K) */
    memcpy (pn532_packetbuffer + 4, data, 16);        /* Data Payload */

    /* Send the command */
    if (HAL(writeCommand)(pn532_packetbuffer, 20)) {
        return 0;
    }

    /* Read the response packet */
    return (0 < HAL(readResponse)(pn532_packetbuffer, sizeof(pn532_packetbuffer)));
}


