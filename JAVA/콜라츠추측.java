class Solution {
    public int solution(int num) {
        int answer = 0;
        long n = Long.valueOf(num); 
        
        while(n > 1){
            answer += 1;
            if(answer == 501){
                answer = -1;
                break;
            }
            if(n%2 == 0){
                n = n/2;
            }else{
                n = n*3+1;
            }
        }
        return answer;    
    }
}