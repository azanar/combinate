require 'combinate/core_ext/array'

RSpec.describe Array do
  it 'works like the module does' do
    expect([[1,2],[3,4],[5,6]].combinate).to eq([[1], [2], [3], [4], [5], [6], [1, 3], [1, 4], [2, 3], [2, 4], [1, 5], [1, 6], [2, 5], [2, 6], [3, 5], [3, 6], [4, 5], [4, 6], [1, 3, 5], [1, 3, 6], [1, 4, 5], [1, 4, 6], [2, 3, 5], [2, 3, 6], [2, 4, 5], [2, 4, 6]])
  end
end
