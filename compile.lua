
n = 1
for line in io.lines() do
      if line:match"^%[.+%]::$" then
            eqfile = io.open("latex/equations/" .. n .. ".tex", 'w')
            eqn = line:match"%$([^$]+)%$"
            eqfile:write(eqn .. "\n")
            eqfile:close()
            print("![$" .. eqn .. "$](latex/equations/" .. n .. ".png)")
      else
            print(line)
      end
      n = n+1
end

