/**
 * This example shows how to use Vader to simply log messages to STDOUT
 * @since 0.0.1
 */
#import("../src/vader_server.dart");

void main(){
    Vader vader = Vader.vader(new StdoutStream());
    vader.logWarn("You don't know the power of the dark side!");
    vader.logInfo("Luke, I am your father!");
}
