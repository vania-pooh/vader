/**
 * FileStream class file
 * 
 * Outputs any log entry to the file
 * 
 * @since 0.0.1
 */

/**
 * FileStream class
 */
class FileStream extends Stream {
  
    /**
     * Stores file output stream object
     */
    OutputStream _outputStream = null;
    
    /**
     * Stores names of the file
     */
    String _filename = "";
    
    /**
     * Constructor
     */
    FileStream(String filename){
        //TODO: add log rotation for file_stream
        this._filename = filename;
    }
    
    /**
     * Returns filename to be used
     */
    String _getFilename() => this._filename;
    
    /**
     * Initializes file output stream
     */
    void _initOutputStream(){
      if (_getOutputStream() == null){
          File file = new File(_getFilename());
          if (file.existsSync()){
            this._outputStream = file.openOutputStream(FileMode.APPEND);
          }else{
            this._outputStream = file.openOutputStream(FileMode.WRITE);
          }
          
          this._outputStream.onClosed = _resetOutputStream;
      }
    }
    
    /**
     * Output stream getter
     */
    OutputStream _getOutputStream() => this._outputStream;
    
    /**
     * Resets file output stream to its initial state
     */
    void _resetOutputStream(){
        this._outputStream = null;
    }
    
    /**
     * Outputs entry message to specified file
     * @param entry log entry to be outputted
     * @return nothing to return
     */
    void output(LogEntry entry){
        _initOutputStream();
        _getOutputStream().writeString(entry.getMessage().concat("\n"));
    }

}
