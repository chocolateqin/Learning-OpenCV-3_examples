// Example 2-11. A complete program to read in a color video and write out the log-polar-
// transformed video

#include <opencv2/opencv.hpp>
#include <iostream>

void help(char **argv)
{
    std::cout << "\n"
              << "Read in a pyrdown video\n"
              << argv[0] << " <path/video>\n"
              << "For example:\n"
              << argv[0] << " ../vout.avi\n"
              << std::endl;
}

int main(int argc, char **argv)
{

    if (argc != 2)
    {
        help(argv);
        return 0;
    }

    cv::namedWindow("Exercise 02-04", cv::WINDOW_AUTOSIZE);

    // ( Note: could capture from a camera by giving a camera id as an int.)
    //

    cv::VideoCapture capture(argv[1]);
    double fps = capture.get(cv::CAP_PROP_FPS);
    cv::Size size(
        (int)capture.get(cv::CAP_PROP_FRAME_WIDTH),
        (int)capture.get(cv::CAP_PROP_FRAME_HEIGHT));

    cv::Mat bgr_frame;

    for (;;)
    {

        capture >> bgr_frame;
        if (bgr_frame.empty())
            break; // end if done

        cv::imshow("Exercise 02-04", bgr_frame);

        char c = cv::waitKey(1000);

        if (c == 27)
            break; // allow the user to break out
    }

    capture.release();
}
