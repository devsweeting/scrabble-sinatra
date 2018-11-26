require('rspec')
require('pry')
require('scrabble.rb')

describe('scrabble.rb') do
  it("returns a score of 5 for K") do
    expect(scrabble_score("K")).to(eq(5))
  end

  it("returns a score of 10 for Q and Z") do
    expect(scrabble_score("Q")).to(eq(10))
    expect(scrabble_score("Z")).to(eq(10))
  end

  it("returns a score of 8 for J and X") do
    expect(scrabble_score("J")).to(eq(8))
    expect(scrabble_score("X")).to(eq(8))
  end

  it("returns a score of 2 for D and G") do
    expect(scrabble_score("D")).to(eq(2))
    expect(scrabble_score("G")).to(eq(2))
  end

  it("returns a score of 3 for B, C, M, and P") do
    expect(scrabble_score("B")).to(eq(3))
    expect(scrabble_score("C")).to(eq(3))
    expect(scrabble_score("M")).to(eq(3))
    expect(scrabble_score("P")).to(eq(3))
  end

  it("returns a score of 4 for F, H, V, W, and Y") do
    expect(scrabble_score("F")).to(eq(4))
    expect(scrabble_score("H")).to(eq(4))
    expect(scrabble_score("V")).to(eq(4))
    expect(scrabble_score("W")).to(eq(4))
    expect(scrabble_score("Y")).to(eq(4))
  end

  it("returns a score of 1 for all other letters") do
    expect(scrabble_score("A")).to(eq(1))
    expect(scrabble_score("E")).to(eq(1))
    expect(scrabble_score("I")).to(eq(1))
    expect(scrabble_score("O")).to(eq(1))
    expect(scrabble_score("U")).to(eq(1))
    expect(scrabble_score("L")).to(eq(1))
    expect(scrabble_score("N")).to(eq(1))
    expect(scrabble_score("R")).to(eq(1))
    expect(scrabble_score("S")).to(eq(1))
    expect(scrabble_score("T")).to(eq(1))
  end

  it("returns a score for words") do
    expect(scrabble_score("AND")).to(eq(4))
    expect(scrabble_score("happy")).to(eq(15))
    expect(scrabble_score("leet")).to(eq(4))
  end
end
