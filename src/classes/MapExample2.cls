public class MapExample2 {
    public list<selectOption> cities{set;get;}
    public list<selectOption> places{set;get;}
    public map<string,list<string>> cityMap{set;get;}
    public string selected{set;get;}
    public MapExample2(){
        cityMap=new map<string,list<string>>();
        selectOption op=new selectOption('none','None');
        cities.add(op);
        places.add(op);
        list<string>hPlaces=new list<string>{'LBNagar','SRNagar'};
        list<string>bPlaces=new list<string>{'Marthali','Whitefield'}; 
        cityMap.put('Hyd',hPlaces);
        cityMap.put('Ban',bPlaces);
        for(string s:citymap.keySet()){
            selectOption n=new selectOption(s,s);
            cities.add(n);
            places.add(n);
        }
    }
    public void getvalues(){
        places.clear();
        selectOption op=new selectOption('none','None');
        places.add(op);
        if(selected!='none'){
            list<string>myPlaces=cityMap.get(selected);
            for(string s:myplaces){
                selectOption n=new selectOption(s,s);
                places.add(n);
            }
        }        
    }
}