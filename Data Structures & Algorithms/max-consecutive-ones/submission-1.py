class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        counter = 0
        max = 0
        for i,val in enumerate(nums):
            if val == 1:
                counter += 1
            if val == 0 or i == len(nums)-1:
                if counter > max:
                    max = counter
                counter = 0
        return max
