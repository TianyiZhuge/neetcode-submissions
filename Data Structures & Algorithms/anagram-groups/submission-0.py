class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        res = defaultdict(list)
        for s in strs:
            count = [0] * 26
            for c in s:
                count[ord(c) - ord('a')] += 1
            res[tuple(count)].append(s)
        return list(res.values())

#根据字母异位词进行分类
#1：判断是否是异位词  ---- 字符长度一致，字符出现频次完全一致
#2
        
        