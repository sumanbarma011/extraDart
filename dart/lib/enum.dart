enum Days{sunday,monday,tuesday,wednesday}
void expectedDays(Days day){
  switch(day.index){
    case 0:
    print('holiday');
    break;
    case 1:
    print('halftime');
    break;
    default:
    print('workdys');
  }

}
void main(){
  expectedDays(Days.monday);
}