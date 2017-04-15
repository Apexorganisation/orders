public class MapExample1 {
    public void printList(){
        list<string>li=new list<string>();
        li.add('G');
        li.add('B');
        li.add('J');
        system.debug('List:'+li);
        for(string val:li){
            system.debug('Value:'+val);
        }
    }
    public void printset(){
        set<string>se=new set<string>();
        se.add('G');
        se.add('B');
        se.add('J');
        system.debug('Set:'+se);
        for(string val:se){
            system.debug('Value:'+val);
        }
    }
    public void printmap(){
        Map<string,string>ma=new map<string,string>();
        ma.put('G','Vamsi');
        ma.put('B','Jhansi');
        ma.put('J','Anil');
        system.debug('Map:'+ma);
        Set<string>kset=ma.keyset();
        for(string key:kset){
            system.debug('Key:'+key);
            system.debug('val:'+ma.get(key));
        }
        list<string>valList=ma.values();
        for(string val:valList){
            system.debug('Value:'+val);
        }
    }
}