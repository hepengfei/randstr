-- -*-mode:org; coding:utf-8-*-

-- 用法：
-- str1 = derange('abcdef')
-- str2 = repin('abcdef', 32)

-- 随机打乱source中字符的排列。
-- - source : 源字符串，必选
-- - prefix : 可选的前缀字串，默认为空串
function derange(source, prefix)
   if prefix == nil then
      prefix = ''
   end
   if source:len() == 0 then
      return prefix
   end
   idx=math.ceil(math.random()*source:len())
   char=source:sub(idx,idx)
   reduce=source:gsub(char, '', 1)
   return derange(reduce, prefix .. char)
end

-- 用charset中的字符随机生成指定长度的字符串。
-- - charset : 可选字符集合，必选
-- - n : 结果字符串长度，默认与charset同长
-- - prefix : 可选的前缀字串，默认为空串
function reqin(charset, n, prefix)
   if prefix == nil then
      prefix = ''
   end
   if n == nil then
      n=charset:len()
   end
   if prefix:len() == n then
      return prefix
   end
   idx=math.ceil(math.random()*charset:len())
   char=charset:sub(idx,idx)
   return reqin(charset, n, prefix .. char)
end

