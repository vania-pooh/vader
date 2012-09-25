/**
 * Stream class file
 * 
 * A base class for logger output streams
 * 
 * @since   0.0.1
 */

/**
 * Stream class
 */
class Stream {
    /**
     * Outputs passed log entry. Can contain miscellaneous caching techniques depending on the output media.
     * @param entry log entry to be outputted
     * @return nothing to return
     */
    abstract void output(LogEntry entry);
}
