class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        count = {}
        for num in nums:
            count[num] = 1 + count.get(num,0)
        

        arr = []
        for num, cnt in count.items():
            arr.append([cnt, num])
        arr.sort()


        res = []
        while len(res) < k:
            res.append(arr.pop()[1])
        return res






    #给出前K个最多的数字
    #1：哪些频次最高？ dict
        