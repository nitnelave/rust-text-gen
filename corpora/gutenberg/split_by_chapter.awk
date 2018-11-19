BEGIN {
  chap = 1
  fn = ""
  IGNORECASE = 1
}
/^chapter [0-9IVXLCD]+/ {
  if (fn != "")
    close(fn)
  num = sprintf("%04.6g", chap)
  fn = "chapter_" num ".txt"
  ++chap
  print fn
  next
}
{
  print > fn
}
END {
  close(fn)
}
