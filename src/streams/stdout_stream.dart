/**
 * StdoutStream class file
 * 
 * Simply outputs a log entry message to the STDOUT
 * 
 * @since 0.0.1
 */

/**
 * StdoutStream class
 */
class StdoutStream extends Stream {
  
    /**
     * Simply outputs entry message to STDOUT
     * @param entry log entry to be outputted
     * @return nothing to return
     */
    void output(LogEntry entry){
        print(entry.getMessage());
    }
}
