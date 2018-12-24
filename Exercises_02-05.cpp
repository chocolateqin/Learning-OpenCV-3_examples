// Example 2-11. A complete program to read in a color video and write out the log-polar-
// transformed video

#include <iostream>
#include <opencv2/opencv.hpp>

using namespace std;

void help(char **argv)
{
    std::cout << "\n"
              << "Read in a pyrdown video\n"
              << argv[0] << " <path/video>\n"
              << "For example:\n"
              << argv[0] << " ../vout.avi\n"
              << std::endl;
}

int g_slider_position = 0;
int g_pyrDown = 2; //start out in single step mode
cv::VideoCapture g_cap;

void onTrackbarSlide(int pos, void *)
{
    g_pyrDown = pos;
}

int main(int argc, char **argv)
{

    if (argc != 2)
    {
        help(argv);
        return 0;
    }

    cv::namedWindow("Exercise 02-05", cv::WINDOW_AUTOSIZE);
    cv::namedWindow("pyrd_frame 02-05", cv::WINDOW_AUTOSIZE);

    // ( Note: could capture from a camera by giving a camera id as an int.)
    //
    g_cap.open(string(argv[1]));
    double fps = g_cap.get(cv::CAP_PROP_FPS);
    int frames = (int) g_cap.get( cv::CAP_PROP_FRAME_COUNT  );
    int tmpw   = (int) g_cap.get( cv::CAP_PROP_FRAME_WIDTH  );
    int tmph   = (int) g_cap.get( cv::CAP_PROP_FRAME_HEIGHT );

    std::cout << "Video has " << frames << " frames of dimensions("
        << tmpw << ", " << tmph << ")." << std::endl;

    cv::createTrackbar(
        "Position",
        "Exercise 02-05",
        &g_slider_position,
        8,
        onTrackbarSlide);

    cv::setTrackbarPos("Position", "Exercise 02-05", g_pyrDown);
    cv::Mat bgr_frame;
    cv::Mat pyrd_frame;

    for (;;)
    {

        g_cap >> bgr_frame;
        if (bgr_frame.empty())
            break; // end if done

        cv::imshow("Exercise 02-05", bgr_frame);
        cv::pyrDown(bgr_frame, pyrd_frame);
        for(int i=0; i<g_pyrDown-2; i++)
            cv::pyrDown(pyrd_frame, pyrd_frame);

        cv::imshow("pyrd_frame 02-05", pyrd_frame);

        char c = cv::waitKey(1000);

        if (c == 27)
            break; // allow the user to break out
    }

    g_cap.release();
}
