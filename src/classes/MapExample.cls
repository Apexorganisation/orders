Public class MapExample {
    public void PrintList(){
        list<string> li= new list<string>();
        li.add('G');
        li.add('D');
        li.add('J');
        li.add('L');
        li.add('B');
        li.add('M');
        system.debug('list:'+li);
        for(string val:li){
            system.debug('value:'+val);
        }
    }
    public void PrintSet(){
        Set<string> se=new Set<string>();
        se.add('G');
        se.add('D');
        se.add('J');
        se.add('L');
        se.add('B');
        se.add('M');
        system.debug('set:'+se);
        for(string val:se){
            system.debug('Value:'+val);
        }
    }
    public void PrintMap(){
        map<string,String> ma=new map<string,string>();
        ma.put('G','vamsi');
        ma.put('D','Ramesh');
        ma.put('J','Anil');
        ma.put('L','Mounika');
        ma.put('B','Jhansi');
        ma.put('M','Anusha');
        system.debug('Map:'+ma);
        set<string> kset=ma.keySet();
        system.debug('kset:'+kset);
        for(string key:kset){
            system.debug('key:'+key);
            system.debug('value:'+ma.get(key));      
        }
        list<string> valList=ma.values();
        for(string val:valList){
            system.debug('value:'+val);
        }	
    }
}