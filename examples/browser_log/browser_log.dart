/**
 * This example shows how to use Vader to log messages to browser's web development console
 * @since 0.0.1
 */
#import("../../src/vader_client.dart");
void main(){
    Vader vader = Vader.vader(new WebConsoleStream());
    vader.logDebug("Impressive. Most impressive. Obi-Wan has taught you well. You have controlled your fear. Now, release your anger. Only your hatred can destroy me.");
    vader.logInfo("I sense something, a presence I've not felt since.......");
    vader.logCrit("You should not have come back!");
}