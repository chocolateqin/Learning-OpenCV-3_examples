// Example 2-11. A complete program to read in a color video and write out the log-polar-
// transformed video

#include <opencv2/opencv.hpp>
#include <iostream>

void help(char **argv)
{
    std::cout << "\n"
              << "Read in a video, write out a pyrdown of it\n"
              << argv[0] << " <path/video> <paht/video_output>\n"
              << "For example:\n"
              << argv[0] << " ../tree.avi ../vout.avi\n"
              << std::endl;
}

int main(int argc, char **argv)
{

    if (argc != 3)
    {
        help(argv);
        return 0;
    }

    cv::namedWindow("Exercise 2-03", cv::WINDOW_AUTOSIZE);
    cv::namedWindow("pyrDown", cv::WINDOW_AUTOSIZE);

    // ( Note: could capture from a camera by giving a camera id as an int.)
    //

    cv::VideoCapture capture(argv[1]);
    double fps = capture.get(cv::CAP_PROP_FPS);
    cv::Size size(
        (int)capture.get(cv::CAP_PROP_FRAME_WIDTH),
        (int)capture.get(cv::CAP_PROP_FRAME_HEIGHT));

    cv::VideoWriter writer;
    writer.open(argv[2], cv::VideoWriter::fourcc('M', 'J', 'P', 'G'), fps, size);

    cv::Mat pyrd_frame, bgr_frame;

    for (;;)
    {

        capture >> bgr_frame;
        if (bgr_frame.empty())
            break; // end if done

        cv::imshow("Example 2-03", bgr_frame);
        cv::pyrDown(bgr_frame, pyrd_frame);

        cv::imshow("pyrDown", pyrd_frame);

        writer << pyrd_frame;

        char c = cv::waitKey(1000);

        if (c == 27)
            break; // allow the user to break out
    }

    writer.release();
    capture.release();
}
