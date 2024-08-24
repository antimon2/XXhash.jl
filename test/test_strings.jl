module StringTests

using XXhash
using InlineStrings
using Test

function test_xxhxx(xxhxx, res1, expected1, res2, expected2)
    @test xxhxx(res1) == xxhxx(expected1)
    @test xxhxx(res2) == xxhxx(expected2)
    @test xxhxx(res1) != xxhxx(res2)
end

function test_xxhxstream(::Type{StreamType}, xxhxx, res) where StreamType
    s = StreamType()
    xxhash_update(s, res)
    @test xxhash_digest(s) == xxhxx(res)
end

@testset "String" begin
    str1 = "abc"
    str2 = "123"
    test_xxhxx(xxh32, str1, "abc", str2, "123")
    test_xxhxx(xxh64, str1, "abc", str2, "123")
    test_xxhxx(xxh3_64, str1, "abc", str2, "123")
    test_xxhxx(xxh3_128, str1, "abc", str2, "123")
    test_xxhxstream(XXH32stream, xxh32, str1)
    test_xxhxstream(XXH64stream, xxh64, str1)
    test_xxhxstream(XXH3_64stream, xxh3_64, str1)
    test_xxhxstream(XXH3_128stream, xxh3_128, str1)
end

@testset "String1" begin
    str1 = String1("a")
    str2 = String1("1")
    test_xxhxx(xxh32, str1, inline1"a", str2, inline1"1")
    test_xxhxx(xxh64, str1, inline1"a", str2, inline1"1")
    test_xxhxx(xxh3_64, str1, inline1"a", str2, inline1"1")
    test_xxhxx(xxh3_128, str1, inline1"a", str2, inline1"1")
    test_xxhxstream(XXH32stream, xxh32, str1)
    test_xxhxstream(XXH64stream, xxh64, str1)
    test_xxhxstream(XXH3_64stream, xxh3_64, str1)
    test_xxhxstream(XXH3_128stream, xxh3_128, str1)
end

@testset "String3" begin
    str1 = String3("abc")
    str2 = String3("123")
    test_xxhxx(xxh32, str1, inline3"abc", str2, inline3"123")
    test_xxhxx(xxh64, str1, inline3"abc", str2, inline3"123")
    test_xxhxx(xxh3_64, str1, inline3"abc", str2, inline3"123")
    test_xxhxx(xxh3_128, str1, inline3"abc", str2, inline3"123")
    test_xxhxstream(XXH32stream, xxh32, str1)
    test_xxhxstream(XXH64stream, xxh64, str1)
    test_xxhxstream(XXH3_64stream, xxh3_64, str1)
    test_xxhxstream(XXH3_128stream, xxh3_128, str1)
end

@testset "String7" begin
    str1 = String7("abc")
    str2 = String7("123")
    test_xxhxx(xxh32, str1, inline7"abc", str2, inline7"123")
    test_xxhxx(xxh64, str1, inline7"abc", str2, inline7"123")
    test_xxhxx(xxh3_64, str1, inline7"abc", str2, inline7"123")
    test_xxhxx(xxh3_128, str1, inline7"abc", str2, inline7"123")
    test_xxhxstream(XXH32stream, xxh32, str1)
    test_xxhxstream(XXH64stream, xxh64, str1)
    test_xxhxstream(XXH3_64stream, xxh3_64, str1)
    test_xxhxstream(XXH3_128stream, xxh3_128, str1)
end

@testset "String15" begin
    str1 = String15("abc")
    str2 = String15("123")
    test_xxhxx(xxh32, str1, inline15"abc", str2, inline15"123")
    test_xxhxx(xxh64, str1, inline15"abc", str2, inline15"123")
    test_xxhxx(xxh3_64, str1, inline15"abc", str2, inline15"123")
    test_xxhxx(xxh3_128, str1, inline15"abc", str2, inline15"123")
    test_xxhxstream(XXH32stream, xxh32, str1)
    test_xxhxstream(XXH64stream, xxh64, str1)
    test_xxhxstream(XXH3_64stream, xxh3_64, str1)
    test_xxhxstream(XXH3_128stream, xxh3_128, str1)
end

@testset "String31" begin
    str1 = String31("abc")
    str2 = String31("123")
    test_xxhxx(xxh32, str1, inline31"abc", str2, inline31"123")
    test_xxhxx(xxh64, str1, inline31"abc", str2, inline31"123")
    test_xxhxx(xxh3_64, str1, inline31"abc", str2, inline31"123")
    test_xxhxx(xxh3_128, str1, inline31"abc", str2, inline31"123")
    test_xxhxstream(XXH32stream, xxh32, str1)
    test_xxhxstream(XXH64stream, xxh64, str1)
    test_xxhxstream(XXH3_64stream, xxh3_64, str1)
    test_xxhxstream(XXH3_128stream, xxh3_128, str1)
end

@testset "String63" begin
    str1 = String63("abc")
    str2 = String63("123")
    test_xxhxx(xxh32, str1, inline63"abc", str2, inline63"123")
    test_xxhxx(xxh64, str1, inline63"abc", str2, inline63"123")
    test_xxhxx(xxh3_64, str1, inline63"abc", str2, inline63"123")
    test_xxhxx(xxh3_128, str1, inline63"abc", str2, inline63"123")
    test_xxhxstream(XXH32stream, xxh32, str1)
    test_xxhxstream(XXH64stream, xxh64, str1)
    test_xxhxstream(XXH3_64stream, xxh3_64, str1)
    test_xxhxstream(XXH3_128stream, xxh3_128, str1)
end

@testset "String127" begin
    str1 = String127("abc")
    str2 = String127("123")
    test_xxhxx(xxh32, str1, inline127"abc", str2, inline127"123")
    test_xxhxx(xxh64, str1, inline127"abc", str2, inline127"123")
    test_xxhxx(xxh3_64, str1, inline127"abc", str2, inline127"123")
    test_xxhxx(xxh3_128, str1, inline127"abc", str2, inline127"123")
    test_xxhxstream(XXH32stream, xxh32, str1)
    test_xxhxstream(XXH64stream, xxh64, str1)
    test_xxhxstream(XXH3_64stream, xxh3_64, str1)
    test_xxhxstream(XXH3_128stream, xxh3_128, str1)
end

@testset "SubString" begin
    str1 = SubString("abc", 1, 3)  # == "abc"
    str2 = SubString("123", 1, 3)  # == "123"
    test_xxhxx(xxh32, str1, SubString("*abc_", 2, 4), str2, SubString("01234", 2, 4))
    test_xxhxx(xxh64, str1, SubString("*abc_", 2, 4), str2, SubString("01234", 2, 4))
    test_xxhxx(xxh3_64, str1, SubString("*abc_", 2, 4), str2, SubString("01234", 2, 4))
    test_xxhxx(xxh3_128, str1, SubString("*abc_", 2, 4), str2, SubString("01234", 2, 4))
    test_xxhxstream(XXH32stream, xxh32, str1)
    test_xxhxstream(XXH64stream, xxh64, str1)
    test_xxhxstream(XXH3_64stream, xxh3_64, str1)
    test_xxhxstream(XXH3_128stream, xxh3_128, str1)
end

end  # module