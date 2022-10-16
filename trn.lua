function RomanizeMapping(text2)
  -- use digraphs sh, th, etc for some characters
  digraph_en = true

  -- lower case mapping
  mylcase = {}
  mylcase["'"] = "ʾ" -- hamza
  mylcase["A"] = "ā"
  mylcase["v"] = "s̱" -- thaa
  mylcase["j"] = "j" -- "ǧ" -- jeem
  mylcase["H"] = "ḥ"
  mylcase["x"] = "ḵ" -- Khaa
  mylcase["*"] = "ẕ" -- dhal
  mylcase["$"] = "š" -- sheen
  mylcase["S"] = "ṣ"
  mylcase["D"] = "ẓ"
  mylcase["T"] = "ṭ"
  mylcase["Z"] = "ẕ̣" -- DHaa
  mylcase["!"] = "ɛ" -- 3ayn
  mylcase["G"] = "ġ" -- ghayn
  --mylcase["o"] = "ḧ" -- for taa marbuta in pausa non-construct
  mylcase["E"] = "ē"
  mylcase["O"] = "ō"
  mylcase["I"] = "ī"
  mylcase["U"] = "ū"
  mylcase["c"] = "c"
  mylcase["@"] = "ż" -- zh
  mylcase["N"] = "ṅ" -- nun ghunnah
  mylcase["="] = "·" -- to insert middot explicitly. middot is automatically inserted before 'h' if digraph_en=true

  -- upper case mapping. use hash '#' before desired uppercase character
  myucase = {}
  myucase["E"] = "ʾ"
  myucase["v"] = "S̱"
  myucase["j"] = "J" -- "Ǧ"
  myucase["H"] = "Ḥ"
  myucase["x"] = "Ḵ"
  myucase["*"] = "Ẕ"
  myucase["$"] = "Š"
  myucase["S"] = "Ṣ"
  myucase["D"] = "Ẓ"
  myucase["T"] = "Ṭ"
  myucase["Z"] = "Ẕ̣"
  myucase["!"] = "Ɛ"
  myucase["G"] = "Ġ"
  myucase["a"] = "A"
  myucase["e"] = "E"
  myucase["i"] = "I"
  myucase["o"] = "O"
  myucase["u"] = "U"
  myucase["A"] = "Ā"
  mylcase["E"] = "ē"
  myucase["I"] = "Ī"
  mylcase["O"] = "ō"
  myucase["U"] = "Ū"
  myucase["b"] = "B"
  myucase["t"] = "T"
  myucase["d"] = "D"
  myucase["r"] = "R"
  myucase["z"] = "Z"
  myucase["s"] = "S"
  myucase["f"] = "F"
  myucase["q"] = "Q"
  myucase["k"] = "K"
  myucase["l"] = "L"
  myucase["m"] = "M"
  myucase["n"] = "N"
  myucase["h"] = "H"
  myucase["w"] = "W"
  myucase["y"] = "Y"
  myucase["c"] = "C"
  myucase["@"] = "Ż" -- zh
  myucase["N"] = "ṅ" -- nun ghunnah

  if digraph_en then
    --mylcase["v"] = "t" .. utf8.char(0x035f) .. "h"
    --myucase["v"] = "T" .. utf8.char(0x035f) .. "h"
    mylcase["$"] = "s" .. utf8.char(0x035f) .. "h"
    myucase["$"] = "S" .. utf8.char(0x035f) .. "h"
    mylcase["x"] = "k" .. utf8.char(0x035f) .. "h"
    myucase["x"] = "K" .. utf8.char(0x035f) .. "h"
    mylcase["G"] = "g" .. utf8.char(0x035f) .. "h"
    myucase["G"] = "G" .. utf8.char(0x035f) .. "h"
    --mylcase["p"] = "d" .. utf8.char(0x035f) .. "h"
    --myucase["p"] = "D" .. utf8.char(0x035f) .. "h"
    --mylcase["P"] = "d" .. utf8.char(0x035f) ..  utf8.char(0x0323) .. "h"
    --myucase["P"] = "D" .. utf8.char(0x035f) ..  utf8.char(0x0323) .. "h"
    mylcase["c"] = "c" .. utf8.char(0x035f) .. "h"
    myucase["c"] = "C" .. utf8.char(0x035f) .. "h"
    mylcase["@"] = "z" .. utf8.char(0x035f) .. "h"-- zh
    myucase["@"] = "Z" .. utf8.char(0x035f) .. "h"-- zh

    --mylcase["P"] = "d͟͏̣h"
    --myucase["P"] = "D͟͏̣h"

    --mylcase["v"] = "ṯ͡h"
    --myucase["v"] = "Ṯ͡h"
    --mylcase["c"] = "š͡h" -- sheen
    --myucase["c"] = "Š͡h"
    --mylcase["x"] = "ḵ͡h"
    --myucase["x"] = "Ḵ͡h"
    --mylcase["g"] = "ġ͡h" -- ghayn
    --myucase["g"] = "Ġ͡h"
    --mylcase["p"] = "ḏ͡h" -- dhal
    --myucase["p"] = "Ḏ͡h"
    --mylcase["P"] = "ḏ̣͡h"
    --myucase["P"] = "Ḏ̣͡h"
  end

  text3 = ''
  local caps = false
  local prev_charv = ''
  for index3 = 1, #text2 do
    local charv = text2:sub(index3, index3)
    if charv == "#" then
      caps = true
    else
      if caps then
        if myucase[charv] == nil then
          text3 = text3 .. charv
        else
          text3 = text3 .. myucase[charv]
        end
        caps = false
      else
        if digraph_en and charv == 'h' and prev_charv ~= '=' and (prev_charv == 't' or prev_charv == 's' or prev_charv == 'k' or prev_charv == 'd' or prev_charv == 'p' or prev_charv == 'P' or prev_charv == 'D' or prev_charv == 'c' or prev_charv == 'v' or prev_charv == 'x' or prev_charv == 'g') then
          text3 = text3 .. "·"
        end
        if mylcase[charv] == nil then
          text3 = text3 .. charv
        else
          text3 = text3 .. mylcase[charv]
        end
      end
    end
    prev_charv = charv
  end
  return text3
end
function Romanize (elem)
  for index,text in pairs(elem.content) do
    for index2,text2 in pairs(text) do
      text3 = RomanizeMapping(text2)
      text[index2] = text3
    end
    elem.content[index] = text
  end
  --return (elem.content)
  return (elem)
end
function ArTxtReplace(text2)
  --replace_map = {}
  --replace_map["ك"] = "ک"

  text3 = ''
  --print(text2)
  text3 = text2:gsub("ك", "ک")
  --for index3 = 1, #text2 do
  --  local charv = text2:sub(index3, index3)
  --  print(charv)
  --  if replace_map[charv] == nil then
  --    text3 = text3 .. charv
  --  else
  --    text3 = text3 .. replace_map[charv]
  --    print "REPLACING KAF"
  --  end
  --end
  return text3
end
function ArTxtProc(elem)
  for index,text in pairs(elem.content) do
    for index2,text2 in pairs(text) do
      text3 = ArTxtReplace(text2)
      text[index2] = text3
    end
    elem.content[index] = text
  end
  --return (elem.content)
  return (elem)
end
function RootFmt (elem)
  for index,text in pairs(elem.content) do
    for index2,text2 in pairs(text) do
      text3 = "«" .. text2 .. "»"
      text[index2] = text3
    end
    elem.content[index] = text
  end
  return (elem)
end

function Span (elem)
  if elem.classes[1] == 'trn' then
    return pandoc.Emph (Romanize(elem).content)
  elseif elem.classes[1] == 'trn2' then
    return (Romanize(elem).content)
  elseif elem.classes[1] == 'ar' then
    attrs = pandoc.Attr("", {}, {{"lang", "ar"},{"dir","rtl"}})
    elem = ArTxtProc(elem)
    return pandoc.Span(elem.content, attrs)
  elseif elem.classes[1] == 'arroot' then
    attrs = pandoc.Attr("", {}, {{"lang", "ar"},{"dir","rtl"}})
    elem = ArTxtProc(elem)
    return pandoc.Span(RootFmt(elem).content, attrs)
  elseif elem.classes[1] == 'trnroot' then
    return pandoc.Emph (RootFmt(Romanize(elem)).content)
  else
    return elem
  end
end

