class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        stop_point = []
        number = []
        for i,val in enumerate(nums):
            if val == 0:
                stop_point.append(i)
                print(f'update stop_point: {stop_point}')

        if not stop_point:
            return len(nums)



        number.append(stop_point[0])
        print(f'update number : {number}')
        for j in range(1,len(stop_point)):
            number.append(stop_point[j]-stop_point[j-1]-1)
            print(f'sp_j is: {stop_point[j]}')
            print(stop_point[j-1])
            print(f'update number :{number}')
        number.append(len(nums)-1 - stop_point[-1])
        return max(number)
