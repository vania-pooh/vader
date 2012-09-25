/**
 * This example shows how to use Vader to log messages to the file
 * @since 0.0.1
 */
#import("../src/vader_server.dart");

void main(){
    Vader vader = Vader.vader(new FileStream("logfile.log"));
    vader.logEmerg("It is too late for me, son. The Emperor will show you the true nature of the Force. He is your master now.");
    vader.logAlert("The ability to destroy a planet is insignificant next to the power of the force.");
}
