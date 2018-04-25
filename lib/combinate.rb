require "combinate/version"

module Combinate
  def self.combinate(arrs)
    perms = []
    (1.upto(arrs.length)).each do |x|
      arrs.combination(x).each do |comb|
        if comb.length == 1
          Array(comb[0])
        else
          rest = comb[1..-1].map do |e|
            Array(e)
          end
          Array(comb[0]).product(*rest)
        end.each do |p|
          perms << Array(p)
        end
      end
    end
    perms
  end
end
