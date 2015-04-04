# encoding: utf-8
import('../type/criterion')

register t(:stagnation) {
  extends(:criterion)

  satisfied? do
    statistics.stagnant_iterations >= limit
  end

  composer do
    s = sup
    s.attribute(:limit, ruby(:integer))
    s.constructor([
      s.parameter(:limit, ruby(:integer))
    ], source: "self.limit = limit")
    s
  end

}
