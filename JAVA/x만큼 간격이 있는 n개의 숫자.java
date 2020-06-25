class Solution {
    public long[] solution(long x, int n) {
        long[] answer = new long[n];
        long temp = 0;
        
        if(x>= -10000000 & x<=10000000 & n<=1000){
            for (int i =0; i<n; i++){
                long a = Long.valueOf(i);
                temp = x*(a+1);
                answer[i] += temp;
            }
        }
        return answer;
    }
}