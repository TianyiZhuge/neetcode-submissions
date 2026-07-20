class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        
        table = [0] * 26
        for i in range(len(s)):
            table[ord(s[i]) - ord('a')] += 1
            table[ord(t[i]) - ord('a')] -= 1
        
        for val in table:
            if val != 0:
                return False
        return True
            





        

        
#1：字符数相同
#2：出现的各个字符频次一致
#1层，是否长度相同，  2层，是否频次一致