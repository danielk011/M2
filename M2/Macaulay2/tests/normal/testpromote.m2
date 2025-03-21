-- Test promotions and lifts
--
-- Single step extensions
-- R/J --> R/I
-- A --> A[x1..xn]/I
-- R --> frac R
-- ZZ --> ZZ/p
-- ZZ/p[x]/f ---> GF(p,n)

mylift = method()
mypromote = method()

debug Core

mylift(RingElement, EngineRing) := 
mylift(RingElement, Ring) := (f,R) -> try rawLift(raw R, raw f) else error("cannot lift ", toString f, " to the ring ", toString R)

mypromote(ZZ, EngineRing) := 
mypromote(RingElement, EngineRing) := (f,R) -> try rawPromote(raw R,raw f) else error("cannot promote ", toString f, " to the ring ", toString R)


-- Start with some simple tests
-- 1. ZZ ---> ZZ/p
A = ZZ/101
assert(mypromote(101,A) == 0)
assert(mypromote(0,A) == 0)
assert(mypromote(1,A) == 1)
assert(mypromote(1000,A) == -10)

assert(mylift(1_A, ZZ) == 1)
assert(mylift(0_A, ZZ) == 0)
assert(mylift(100*1_A, ZZ) == -1)

-- 2. R ---> frac R
B = ZZ/101[a]
KB = frac B
assert(mypromote(a,KB) == KB_0)
assert(mypromote(1_B,KB) == 1_KB)
assert(mypromote(0_B,KB) == 0_KB)
assert(mypromote(a^2-a-5, KB) == (KB_0)^2-(KB_0)-5)

ab = KB_0
a = raw B_"a"
assert(mylift(ab, B) == a)
-- assert(mylift(ab^2//(-1), B) == -a^2) -- no normal form in fraction fields
assert(mylift(((ab-1)*(ab^2-3))//(ab-1), B) == a^2-3)

-- 3. ZZ/p[x]/f ---> GF(p,n)
C = GF(5,3,Variable=>x)
L = last C.baseRings
D = class lift(x,L)

f = mypromote(D_0, C)
assert( rawLift(raw D, f) == raw x )
-- assert(mylift(f, D) == D_0)
g = mylift(C_0, D)
assert( rawLift(raw C, f) == raw C_0 )
-- assert(mypromote(g,C) == C_0)

--B = ZZ/101[a,b,c]
--C = B/(a^2+b^2+c^2)
--D = C[x,y]
--E = frac D
--F = GF(2,5)

-- more sophisticated, m2 level, promotes
R=QQ[x]; S=R[y];
a=promote(1/x,frac S)
assert(lift(a,frac R) == 1/x)
assert(1/x + 1/y == a + 1/y)
assert(y/x == a * y)
assert(promote((frac R)^{1,2},frac S)==(frac S)^{{1,0},{2,0}})
T=R**QQ[z];
assert(promote(x_R,T) == x_T)
assert(lift(x_T,R) == x_R)
assert(lift(z,R,Verify=>false) === null)

R=QQ[x_1,x_2]
R'=QQ[e_1,e_2,Degrees=>{1,2}]
f=map(R,R',{x_1+x_2,x_1*x_2})
setupPromote f
assert(e_2==x_1*x_2)
assert(map(R,R') === f)

R=QQ[u]; S=QQ[v];
setupPromote map(R,S,{u^2},DegreeMap=>i->2*i)
assert(isHomogeneous map(R,S))
assert(promote(S^{1,2},R)==R^{2,4})

end
-- Local Variables:
-- compile-command: "make -C $M2BUILDDIR/Macaulay2/packages/Macaulay2Doc/test testpromote.out"
-- End:
