public with sharing class MyController {
    private ApexPages.StandardController stdController;
    Account acct;
    public MyController(ApexPages.StandardController stdController)
    {
        this.acct = (account) stdController.getrecord();
    }
    public PageReference doSomething()
    {
		PageReference conPage = new ApexPages.StandardController(acct).view();
		conPage.setRedirect(true);
		return conPage;
    }
}


/*public class MyController {
	private final Account account;
    public MyController(){
        account = [select Id, Name , Site from account 
                   Where id = :ApexPages.currentPage().getParameters().get('Id')];
    }
    
    public account getAccount(){
        return account;
    }
    
    public PageReference save(){
        update account;
        return null;
    }
}
*/