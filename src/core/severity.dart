/**
 * Severity class file
 * 
 * Stores a set of severity levels to be used in logger
 * 
 * @since 0.0.1
 */

/**
 * Severity class
 */
class Severity implements Comparable{
  
    /**
     * Log severity levels from BSD syslog RFC
     * @link http://www.faqs.org/rfcs/rfc3164.html
     */
    static final Severity EMERG = new Severity(0, "EMERG"); //Emergency: system is unusable
    static final Severity ALERT = new Severity(1, "ALERT"); //Alert: action must be taken immediately
    static final Severity CRIT = new Severity (2, "CRIT"); //Critical: critical conditions
    static final Severity FATAL = new Severity(2, "FATAL"); //Fatal: the same as critical
    static final Severity ERR = new Severity(3, "ERR"); //Error: error conditions
    static final Severity WARN = new Severity(4, "WARN"); //Warning: warning conditions
    static final Severity NOTICE = new Severity(5, "NOTICE"); //Notice: normal but significant condition
    static final Severity INFO = new Severity(6, "INFO"); //Informational: informational messages
    static final Severity DEBUG = new Severity(7, "DEBUG"); //Debug: debug messages
    static final Severity OFF = new Severity(8, "OFF"); //Off: logging disabled
    
    /**
     * @var stores numeric level corresponding to current severity
     */
    num _numericLevel = 8;
    
    /**
     * @var stores string representation of the severity level 
     */
    String _toString = "";
    
    /**
     * Private constructor
     * @param numericLevel allows to specify numeric level for each severity type
     * @param toStringValue allows to specify string representation of severity
     */
    Severity(num numericLevel, String toStringValue){
        this._numericLevel = numericLevel;
        this._toString = toStringValue;
    }
    
    /**
     * @return returns numeric level corresponding to current severity instance
     */
    int getNumericLevel() => this._numericLevel;
    
    /**
     * @return returns string representation of severity level
     */
    String toString() => this._toString;
    
    /**
     * Severity comparison function
     * @param otherSeverity
     * @return returns 0 if objects are equal, -1 if current object is less that otherSeverity and 1 if current object is greater than otherObject
     */   
    int compareTo(Severity otherSeverity){
        int currentLevel = getNumericLevel();
        int otherSeverityLevel = otherSeverity.getNumericLevel();
        if (currentLevel == otherSeverityLevel){
            return 0;
        }
        return (currentLevel > otherSeverityLevel) ? 1 : -1; 
    }
    
    /**
     * Defining operators for Severity
     */
    bool operator >(Severity otherSeverity) => (compareTo(otherSeverity) == -1);
    bool operator <(Severity otherSeverity) => (compareTo(otherSeverity) == 1);
    bool operator >=(Severity otherSeverity) => (compareTo(otherSeverity) <= 0); 
    bool operator <=(Severity otherSeverity) => (compareTo(otherSeverity) >= 0);
    bool operator ==(Severity otherSeverity) => (compareTo(otherSeverity) == 0);
}
