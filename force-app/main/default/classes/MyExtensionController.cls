public class MyExtensionController {
    public final Account acct;
    
    	public MyExtensionController(Apexpages.standardController stdController)
        {
            this.acct=(Account)stdController.getRecord();
        }
    
    public String getGreetings(){
        return 'Hello ' +  acct.Name + '( ' + acct.Id + ' )';
    }
}