<<<<<<< HEAD
//Third demo for TRG team
=======
//Second demo for TRG team
//Test Comment
>>>>>>> origin/Manjula-Demo-Branch
global without sharing class DragDropFileUploadController {
	public DragDropFileUploadController(ApexPages.StandardController sc)
	{
		//TODO drag and drop functionality for page.
	}

	@RemoteAction
    global static String saveFile(String filename, String fileContent, String id) {
    	String err = null;
    	try
    	{
	    	Attachment att = new Attachment();
	    	att.ParentId = id;
	    	att.Body = EncodingUtil.base64Decode(fileContent);
	    	att.Name = filename;
	    	insert att;
    	}
    	catch(Exception e){err=e.getMessage();}
        return err;
    }
}
