public class Pagination1 {
	private integer totalrecs=0, OffsetSize=0, limitSize =5;
    
    public Pagination1(){
        totalrecs = [select count() from account];
    }
    
    public List<account> getacclist(){
        List<account> acc = Database.query('SELECT Name , description, AnnualRevenue, website,Type FROM account LIMIT ' + limitSize + ' OFFSET ' + offsetSize);
    	return acc;
    }
                                           
    public void previous(){
        offsetSize = offsetSize - limitSize;
    }                                      
    
    public void next(){
        offsetSize = offsetSize + limitSize;
    }
}