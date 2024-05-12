void main(){
 int addition= add(2,4);
 print(addition);
 cityName(city2: 'Bhaktapur',city1: 'Butwal');
}
// optional parameter
int add(int a,int b,{int? c=3}){
  c??=2; // this means if c is null then c is equals to 2
 return (a+b+c);
}

//named parameter  by default optional 
void cityName({String? city1,String? city2,String city3='New Road'}){
  print('Suman lives in $city1');
  print('Raj lives in $city2');
  print('Anjal lives in $city3');

}