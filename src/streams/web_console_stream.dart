/**
 * WebConsoleStream class file
 * 
 * Outputs any log entry to the web console (the same as console.log())
 * 
 * @since   0.0.1
 */

/**
 * WebConsoleStream class
 */
class WebConsoleStream extends Stream {
  
    /**
     * Outputs entry message to browser's developer console
     * @param entry log entry to be outputted
     */
    void output(LogEntry entry){
        Severity severity = entry.getSeverity();
        String message = entry.getMessage();
        if (severity == Severity.DEBUG){
            window.console.debug(message);
        }else if (severity == Severity.INFO){
            window.console.info(message);       
        }else if (severity >= Severity.NOTICE){
            window.console.error(message);
        }else{
            window.console.log(message);
        }
    }
}
