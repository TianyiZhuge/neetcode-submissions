class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        counter = 0
        check_point = 0
        for i in nums:
            if i == 1:
                counter += 1
            elif i == 0:
                if counter > check_point:
                    check_point = counter
                counter = 0
        return max(counter,check_point)
                    
                

