#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>

struct properties {
  int y_1, y_2, y_3;
  int line_distance_1_out, line_distance_1_in;
  int line_distance_1, line_distance_2, line_distance_3;
  int servo_fine, min_speed, max_speed;
  int sign_min, sign_max, fps;
  int left_mean_1, left_mean_2, left_mean_3;
  int right_mean_1, right_mean_2, right_mean_3;
  double resize_factor, min_adj_servo, max_adj_servo;

  int left_x_1_1;
  int left_x_2_1;

  int right_x_1_1;
  int right_x_2_1;

  int left_x_1_2;
  int left_x_2_2;

  int right_x_1_2;
  int right_x_2_2;

  int left_x_1_3;
  int left_x_2_3;

  int right_x_1_3;
  int right_x_2_3;

  int loop_time;

  int rfid_on;
  int sign_on;
  int sonar_dist;

  double speed_up_min, speed_up_max;
};

enum prop_codes {
  E_resize_factor,
  E_y_1,
  E_y_2,
  E_y_3,
  E_line_dist_1_out,
  E_line_dist_1_in,
  E_line_dist_1,
  E_line_dist_2,
  E_line_dist_3,
  E_servo_fine,
  E_min_speed,
  E_max_speed,
  E_min_adj_servo,
  E_max_adj_servo,
  E_sign_min,
  E_sign_max,
  E_fps,
  E_speed_up_min,
  E_speed_up_max,
  E_rfid_on,
  E_sign_on,
  E_sonar_dist,
  E_left_mean_1,
  E_left_mean_2,
  E_left_mean_3,
  E_right_mean_1,
  E_right_mean_2,
  E_right_mean_3,
  E_calib,
  E_invalid
};

prop_codes string_to_prop(std::string const& inString);

struct properties configure(int param, std::string filename, std::vector<double> mean);
