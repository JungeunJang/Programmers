class Solution {
    public int[] solution(long n) {
        
        int length = Long.toString(n).split("").length; 
        long temp = 0;
        int tmp = 0;
        int[] answer = new int[length];
        
        
        for(int i = 0; i < length; i++ ){
            temp = n%10;
            n = n/10;
            tmp = (int)temp;
            answer[i] += tmp;
        }
        return answer;
    }
}