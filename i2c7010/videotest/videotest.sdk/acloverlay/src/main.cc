/*  For description look into the help() function. */

//#include "opencv2/core/core.hpp"
#include <iostream>
#include <opencv2/core.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>
#include "acl.h"

using namespace std;
using namespace cv;

void Run(int fd, float *accl_x, float* accl_y) {
	float x = 0.0f, y = 0.0f, z = 0.0f;

	printf("ACL Demo Launched\n");

	float average_accl_x = 0.0f, average_accl_y = 0.0f, average_accl_z = 0.0f;
	//float accl_x = 0.0f, accl_y = 0.0f;


	//while (1) {

		average_accl_x = 0.0f;
		average_accl_y = 0.0f;
		average_accl_z = 0.0f;
		for (int i = 0; i < 100; i++) {
			ACL_ReadAccelG(fd, &x, &y, &z);
			//printf("RawValues(%.2f,%.2f)\n", x, y);
			usleep(100);
			average_accl_x += x;
			average_accl_y += y;
			average_accl_z += z;
		}

		average_accl_x /= 100.0f;
		average_accl_y /= 100.0f;
		average_accl_z /= 100.0f;

		//printf("RawValues(%.2f,%.2f)\n", average_accl_x, average_accl_y);

		//Calculating acceleration
		*accl_x = average_accl_x * (float) 9.8f;  // m/s^2
		*accl_y = average_accl_y * (float) 9.8f; // m/s^2


	printf("Done!\n");

}

void Initialize(int fd) {
	ACL_SetMeasure(fd, 0);
	ACL_SetGRange(fd, ACL_PAR_GRANGE_PM4G);
	ACL_SetMeasure(fd, 1);
	ACL_CalibrateOneAxisGravitational(fd, ACL_PAR_AXIS_ZP);
	sleep(1); // After calibration, some delay is required for the new settings
			  // to take effect.
	printf("Initialize worked\n");
}

double full_map(double input, double in_min, double in_max, double out_min, double out_max) {

	double slope = (double) (out_max - out_min) / (double) (in_max - in_min);
	double output = (double) out_min + slope * (double) (input - in_min);
	return output;
}


int main(int,char**){

	int fd = init();
	Initialize(fd);

	float accl_x = 0.0f, accl_y = 0.0f;

    int length = 80;
    int center = length/2;
    int radius = length/2;
    int thickness = 1;
    int lineType = 1;
    int shift = 0;


    Mat image = Mat::zeros( length, length, CV_8UC3 );
    //cout << "M = " << endl << " " << image << endl << endl;

    circle(image, Point(center, center), radius, Scalar(0,0, 255), thickness , lineType, shift);
    line( image, Point( 0, center ), Point( length, center ), Scalar( 0, 0, 255 ),  thickness, lineType, shift );
    line( image, Point( center, 0 ), Point( center, length ), Scalar( 0, 0, 255 ),  thickness, lineType, shift );
    imwrite("Image.jpg", image);

    for(int i = 0; i <= 300;i++){
    	Run(fd, &accl_x, &accl_y);
    	float x = full_map(accl_x, -1, 1, 0, length);
    	float y = full_map(accl_y, -1, 1, 0, length);
    	line( image, Point( x, y ), Point( x, y ), Scalar( 0, 255, 0 ),  thickness, lineType, shift );
    	char output[255];
    	sprintf(output, "Image%d.jpg",i);
    }
    imwrite("image.jpg", image);
    return 0;
}



