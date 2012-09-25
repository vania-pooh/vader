/**
 * LogEntry class file
 * 
 * Stores one log entry
 * 
 * @since 0.0.1
 */

/**
 * LogEntry class
 */
class LogEntry {
    /**
     * Stores log entry message
     */
    String _message = "";
    
    /**
     * Stores log entry severity
     */
    Severity _severity = null;
    
    /**
     * Default constructor
     */
    LogEntry(String message, Severity severity){
        this._severity = severity;
        this._message = message;
    }
    
    /**
     * Severity getter
     */
    Severity getSeverity() => this._severity;
    
    /**
     * Message string getter
     */
    String getMessage() => this._message;
}
