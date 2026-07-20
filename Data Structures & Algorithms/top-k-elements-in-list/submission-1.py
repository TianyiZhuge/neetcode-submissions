class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        count = {}
        for num in nums:
            count[num] = 1 + count.get(num,0)
        

        heap = []
        for num in count.keys():
            heapq.heappush(heap, (count[num],num))
            if len(heap) > k:
                heapq.heappop(heap)


        res = []
        for i in range(k):
            res.append(heapq.heappop(heap)[1])
        return res






    #给出前K个最多的数字
    #1：哪些频次最高？  1:通过计数，然后排列比较
    #count 形如 {1：1，2：2}
    #
        