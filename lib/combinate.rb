require "combinate/version"

module Combinate
  def self.combinate(arrs)
    perms = []
    (1.upto(arrs.length)).each do |x|
      arrs.combination(x).each do |comb|
        first = if comb[0].kind_of?(Hash)
                  [comb[0]]
                else
                  Array(comb[0])
                end
        if comb.length == 1
          first
        else
          rest = comb[1..-1].map do |e|
            if e.kind_of?(Hash)
              [e]
            else
              Array(e)
            end
          end
          first.product(*rest)
        end.each do |p|
          perms << if p.kind_of?(Hash)
                      [p]
                   else
                      Array(p)
                    end
        end
      end
    end
    perms
  end
end
