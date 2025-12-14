-- This script was generated using the MoonVeil Obfuscator v1.4.5 [https://moonveil.cc]
local xd, qa, xb, fa_, Nc, Va = bit32.bxor, type, pairs, getmetatable
local Hb = (getfenv())
local Hd, Id, id = string.char, string.byte, bit32.bxor
local sc = function(g, Wc)
	local i_ = ""
	for I = 78, (#g - 1) + 78 do
		i_ = i_ .. Hd(id(Id(g, (I - 78) + 1), Id(Wc, (I - 78) % #Wc + 1)))
	end
	return i_
end
local zd = select
local Tb = function(...)
	return { [1] = { ... }, [2] = zd("#", ...) }
end
local ia = (
	(function()
		local function hd(qb, ic, xc)
			if ic > xc then
				return
			end
			return qb[ic], hd(qb, ic + 1, xc)
		end
		return hd
	end)()
)
local p, ba = string.gsub, string.char
local X = function(y)
	y = p(y, "[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=]", "")
	return (
		y:gsub(".", function(Vb)
			if Vb == "=" then
				return ""
			end
			local za, fb = "", (("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):find(Vb) - 1)
			for ha = 6, 1, -1 do
				za = za .. (fb % 2 ^ ha - fb % 2 ^ (ha - 1) > 0 and "1" or "0")
			end
			return za
		end):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(Ya)
			if #Ya ~= 8 then
				return ""
			end
			local Ua = 0
			for Vc = 1, 8 do
				Ua = Ua + (Ya:sub(Vc, Vc) == "1" and 2 ^ (8 - Vc) or 0)
			end
			return ba(Ua)
		end)
	)
end
local ac, gd, C, S, A, ka, ad, lb =
	Hb["string"]["unpack"],
	Hb["string"]["sub"],
	Hb["string"]["byte"],
	Hb["bit32"]["lshift"],
	Hb["bit32"]["rshift"],
	Hb["bit32"]["band"],
	Hb["table"]["concat"],
	{}
local Ic = function(tb)
	local pb = lb[tb]
	if pb then
		return pb
	end
	local R, ua, Lc, L, ea = S(1, 11), S(1, 5), 1, {}, ""
	while Lc <= #tb do
		local Ea = C(tb, Lc)
		Lc = Lc + 1
		for Ac = 253, 260 do
			local gb = nil
			if not (ka(Ea, 1) ~= 0) then
				if Lc + 1 <= #tb then
					local B = ac(">I2", tb, Lc)
					Lc = Lc + 2
					local qd, ta = #ea - A(B, 5), ka(B, (ua - 1)) + 3
					gb = gd(ea, qd, qd + ta - 1)
				end
			else
				if Lc <= #tb then
					gb = gd(tb, Lc, Lc)
					Lc = Lc + 1
				end
			end
			Ea = A(Ea, 1)
			if gb then
				L[#L + 1] = gb
				ea = gd(ea .. gb, -R)
			end
		end
	end
	local Sa = ad(L)
	lb[tb] = Sa
	return Sa
end
local l_, Dc, ib, wc, Ub, Cb, z, vb, Ba, Ec, Z, mb, Fb, s_, Da, cc, b_, e_, yb, Kc, ob, va, Fd, ec, Db, Qa, Pa, fd, wa, Ma =
	Hb["type"],
	Hb["pcall"],
	Hb["error"],
	Hb["tonumber"],
	Hb["assert"],
	Hb["select"],
	Hb["setmetatable"],
	Hb["string"]["format"],
	Hb["string"]["unpack"],
	Hb["string"]["sub"],
	Hb["string"]["byte"],
	Hb["string"]["char"],
	Hb["table"]["move"],
	Hb["table"]["pack"],
	Hb["table"]["create"],
	Hb["table"]["insert"],
	Hb["table"]["concat"],
	Hb["coroutine"]["create"],
	Hb["coroutine"]["yield"],
	Hb["coroutine"]["resume"],
	Hb["coroutine"]["close"],
	Hb["getfenv"],
	Hb["bit32"]["bor"],
	Hb["bit32"]["bxor"],
	Hb["bit32"]["band"],
	Hb["bit32"]["btest"],
	Hb["bit32"]["rshift"],
	Hb["bit32"]["lshift"],
	Hb["bit32"]["extract"],
	{
		[29850] = {},
		[27410] = {},
		[38411] = {
			{ 5, 10, false },
			{ 4, 8, false },
			{ 9, 1, false },
			{ 2, 8, false },
			{ 5, 7, true },
			{ 6, 4, false },
			{ 4, 7, true },
			{ 2, 7, false },
			{ 2, 2, true },
			{ 2, 6, false },
			{ 7, 1, false },
			{ 4, 1, false },
			{ 2, 8, false },
			{ 7, 8, false },
			{ 6, 10, false },
			{ 7, 9, true },
			{ 2, 7, true },
			{ 7, 8, false },
			{ 9, 2, false },
			{ 2, 7, true },
			{ 7, 5, false },
			{ 7, 9, false },
			{ 7, 5, false },
			{ 9, 8, false },
			{ 7, 8, true },
			{ 6, 2, false },
			{ 9, 8, false },
			{ 7, 1, true },
			{ 2, 8, true },
			{ 7, 8, false },
			{ 7, 5, false },
			{ 7, 1, false },
			{ 2, 4, false },
			{ 5, 10, false },
			{ 7, 3, true },
			{ 7, 8, false },
			{ 9, 4, true },
			{ 2, 9, true },
			{ 7, 2, true },
			{ 6, 6, false },
			{ 2, 2, false },
			{ 5, 3, false },
			{ 7, 7, true },
			{ 9, 3, true },
			{ 9, 3, false },
			{ 7, 8, false },
			{ 6, 7, false },
			{ 2, 7, true },
			{ 4, 3, true },
			{ 9, 9, false },
			{ 2, 10, false },
			{ 7, 8, true },
			{ 4, 9, false },
			{ 4, 3, true },
			{ 7, 8, true },
			{ 9, 7, false },
			{ 4, 2, true },
			{ 5, 6, false },
			{ 5, 8, false },
			{ 7, 8, true },
			{ 7, 9, true },
			{ 4, 3, false },
			{ 7, 8, false },
			{ 4, 2, true },
			{ 7, 8, true },
			{ 4, 8, false },
			{ 2, 3, true },
			{ 9, 7, true },
			{ 5, 7, true },
			{ 7, 8, false },
			{ 2, 9, true },
			{ 4, 8, true },
			{ 7, 8, false },
			{ 4, 1, false },
			{ 6, 7, false },
			{ 7, 6, true },
			{ 7, 10, true },
			{ 7, 4, false },
			{ 9, 10, false },
			{ 7, 4, true },
			{ 5, 3, true },
			{ 5, 4, false },
			{ 7, 9, true },
			{ 7, 9, true },
			{ 7, 8, false },
			{ 6, 10, false },
			{ 7, 8, false },
			{ 2, 4, true },
			{ 4, 9, false },
			{ 5, 6, false },
			{ 2, 2, false },
			{ 4, 7, true },
			{ 4, 7, true },
			{ 2, 8, true },
			{ 4, 6, false },
			{ 4, 0, false },
			{ 6, 2, true },
			{ 5, 3, true },
			{ 7, 4, false },
			{ 4, 10, true },
			{ 6, 8, true },
			{ 5, 9, false },
			{ 6, 8, true },
			{ 7, 3, false },
			{ 2, 6, true },
			{ 2, 1, true },
			{ 7, 10, false },
			{ 9, 3, true },
			{ 2, 8, true },
			{ 2, 4, true },
			{ 6, 1, true },
			{ 7, 1, false },
			{ 7, 8, false },
			{ 9, 4, false },
			{ 6, 1, true },
			{ 7, 9, false },
			{ 9, 10, false },
			{ 7, 9, true },
			{ 2, 8, false },
			{ 4, 9, true },
			{ 9, 2, false },
			{ 2, 10, false },
			{ 2, 8, false },
			{ 5, 8, true },
			{ 4, 2, true },
			{ 2, 8, false },
			{ 2, 6, true },
			{ 6, 10, true },
			{ 7, 8, false },
			{ 6, 1, true },
			{ 2, 10, false },
			{ 7, 8, false },
			{ 2, 8, false },
			{ 6, 10, false },
			{ 2, 8, true },
			{ 7, 9, true },
			{ 4, 3, false },
			{ 7, 3, true },
			{ 6, 6, true },
			{ 4, 6, false },
			{ 4, 4, true },
			{ 9, 4, false },
			{ 7, 8, false },
			{ 7, 8, false },
			{ 2, 7, false },
			{ 7, 8, false },
			{ 2, 8, false },
			{ 9, 6, true },
			{ 4, 1, true },
			{ 9, 10, false },
			{ 2, 1, false },
			{ 9, 3, true },
			{ 7, 8, false },
			{ 5, 1, false },
			{ 2, 4, false },
			{ 2, 8, false },
			{ 6, 1, true },
			{ 2, 9, true },
			{ 6, 9, false },
			{ 7, 8, false },
			{ 6, 8, false },
			{ 5, 6, true },
			{ 7, 1, false },
			{ 2, 8, false },
			{ 9, 7, true },
			{ 2, 1, false },
			{ 7, 8, false },
			{ 7, 8, false },
			{ 6, 9, true },
			{ 7, 5, false },
			{ 7, 9, true },
			{ 2, 7, true },
			{ 5, 7, true },
			{ 2, 8, true },
			{ 5, 10, false },
			{ 7, 8, false },
			{ 7, 8, false },
			{ 9, 2, true },
			{ 7, 6, true },
			{ 7, 9, true },
			{ 6, 7, true },
			{ 7, 3, false },
			{ 2, 8, true },
			{ 6, 6, false },
			{ 4, 4, false },
			{ 9, 7, false },
			{ 2, 8, true },
			{ 9, 8, false },
			{ 6, 7, true },
			{ 2, 2, true },
			{ 9, 3, true },
			{ 7, 9, false },
			{ 5, 1, true },
			{ 7, 8, false },
			{ 7, 10, false },
			{ 2, 4, false },
			{ 5, 4, true },
			{ 7, 8, false },
			{ 6, 10, false },
			{ 7, 9, true },
			{ 7, 10, false },
			{ 7, 1, false },
			{ 5, 7, true },
			{ 4, 8, true },
			{ 7, 2, true },
			{ 7, 9, true },
			{ 2, 8, false },
			{ 6, 10, true },
			{ 6, 8, true },
			{ 7, 8, false },
			{ 6, 8, true },
			{ 6, 7, true },
			{ 9, 9, true },
			{ 5, 8, false },
			{ 7, 1, false },
			{ 9, 8, false },
			{ 5, 10, true },
			{ 7, 1, false },
			{ 7, 8, false },
			{ 4, 1, false },
			{ 6, 7, false },
			{ 9, 10, false },
			{ 6, 10, false },
			{ 4, 3, false },
			{ 5, 8, false },
			{ 7, 8, false },
			{ 7, 8, false },
			{ 7, 4, true },
			{ 7, 7, true },
			{ 2, 10, false },
			{ 6, 10, true },
			{ 9, 9, false },
			{ 5, 3, false },
			{ 6, 2, false },
			{ 7, 8, false },
			{ 7, 8, false },
			{ 2, 8, false },
			{ 4, 2, true },
			{ 7, 8, false },
			{ 4, 8, false },
			{ 2, 8, true },
			{ 6, 2, false },
			{ 4, 9, true },
			{ 9, 6, false },
			{ 7, 6, false },
			{ 6, 7, true },
			{ 9, 6, true },
			{ 6, 3, false },
			{ 7, 9, true },
			{ 2, 1, false },
			{ 2, 7, true },
			{ 2, 2, true },
			{ 7, 6, true },
			{ 2, 7, true },
			{ 2, 9, true },
			{ 7, 9, false },
		},
	}
local Ib = function(Q)
	local wd = Ma[27410][Q]
	if wd then
		return wd
	end
	local Cd = 1
	local function rb()
		local Ga, Mb, Bb, x, Ja, tc, Aa, kc, Xc, f_, hb, Tc, cb, K, m, gc, Za, Sc, D, Pc, Ha, c, w_, ga, Ca, Rc, Yc, sb, bc, oc, _a, yd
		gc, ga = {}, function(Gc, a_, la)
			gc[a_] = xd(la, 35965) - xd(Gc, 19327)
			return gc[a_]
		end
		f_ = gc[13889] or ga(3826, 13889, 20908)
		repeat
			if f_ > 37002 then
				if f_ <= 53460 then
					if f_ > 44731 then
						if f_ <= 50472 then
							if f_ < 47973 then
								if f_ <= 47168 then
									if f_ <= 46248 then
										if f_ > 45684 then
											if (tc >= 0 and Ha > m) or ((tc < 0 or tc ~= tc) and Ha < m) then
												f_ = gc[25267] or ga(61129, 25267, 70653)
											else
												f_ = gc[-23056] or ga(39847, -23056, 23431)
											end
										else
											c = tc
											if hb ~= hb then
												f_ = gc[2447] or ga(37969, 2447, 67913)
											else
												f_ = gc[20471] or ga(5847, 20471, 108898)
											end
										end
									else
										sb = Ja
										if sb == 0 then
											f_ = gc[-23563] or ga(16508, -23563, 28290)
											continue
										else
											f_ = gc[-1061] or ga(58225, -1061, 110365)
											continue
										end
										f_ = gc[6841] or ga(36660, 6841, 114719)
									end
								else
									yd, f_ = ec(cb, 192), 56348
									continue
								end
							elseif f_ < 48206 then
								if f_ > 47973 then
									f_, Bb = gc[-24585] or ga(28807, -24585, 112112), Ga
								else
									hb = hb + c
									x = hb
									if hb ~= hb then
										f_ = gc[-14457] or ga(58924, -14457, 103506)
									else
										f_ = gc[-23313] or ga(36788, -23313, 72162)
									end
								end
							elseif f_ < 49505 then
								x = hb
								if _a ~= _a then
									f_ = gc[29154] or ga(64534, 29154, 110136)
								else
									f_ = gc[8661] or ga(58385, 8661, 68671)
								end
							elseif f_ > 49505 then
								Aa, D = Db(Pa(x, 8), 16777215), nil
								D = if Aa < 8388608 then Aa else Aa - 16777216
								f_, sb[29681] = gc[21606] or ga(10929, 21606, 9770), D
							else
								f_, kc = 272, ec(Sc, 192)
								continue
							end
						elseif f_ <= 51442 then
							if f_ >= 51317 then
								if f_ > 51317 then
									Ga = Bb
									_a = Fd(_a, fd(Db(Ga, 127), (bc - 211) * 7))
									if not Qa(Ga, 128) then
										f_ = gc[9172] or ga(4512, 9172, 106677)
										continue
									end
									f_ = gc[-5667] or ga(44629, -5667, 85193)
								else
									f_, c = gc[18407] or ga(35527, 18407, 78211), nil
								end
							elseif f_ <= 51063 then
								if (_a >= 0 and tc > hb) or ((_a < 0 or _a ~= _a) and tc < hb) then
									f_ = gc[20140] or ga(8532, 20140, 105548)
								else
									f_ = 59323
								end
							else
								hb = tc
								Xc = Fd(Xc, fd(Db(hb, 127), (m - 41) * 7))
								if not Qa(hb, 128) then
									f_ = gc[16880] or ga(18309, 16880, 57435)
									continue
								end
								f_ = gc[25339] or ga(61973, 25339, 65991)
							end
						elseif f_ <= 52065 then
							if f_ <= 51479 then
								_a, f_ = Ja, gc[-7988] or ga(34986, -7988, 29882)
								continue
							else
								Bb, f_ = nil, gc[-11093] or ga(60564, -11093, 76285)
							end
						else
							if (c >= 0 and hb > _a) or ((c < 0 or c ~= c) and hb < _a) then
								f_ = 27356
							else
								f_ = 3232
							end
						end
					elseif f_ <= 41433 then
						if f_ < 38495 then
							if f_ < 37954 then
								if f_ <= 37310 then
									if (c >= 0 and hb > _a) or ((c < 0 or c ~= c) and hb < _a) then
										f_ = gc[16879] or ga(28561, 16879, 29746)
									else
										f_ = gc[8429] or ga(1213, 8429, 114839)
									end
								else
									m = Za
									if Yc ~= Yc then
										f_ = gc[-20966] or ga(17431, -20966, 61338)
									else
										f_ = gc[-30985] or ga(64449, -30985, 26395)
									end
								end
							elseif f_ > 37954 then
								D = Ba("c" .. sb, Q, Cd)
								f_, Cd = 63855, Cd + sb
							else
								f_, c[(Bb - 162)] = gc[-21922] or ga(57772, -21922, 70410), rb()
							end
						elseif f_ >= 39610 then
							if f_ > 40052 then
								Yc, f_ = false, gc[32673] or ga(61573, 32673, 99882)
							elseif f_ > 39610 then
								sb = Db(Pa(Bb, 10), 1023)
								f_, Mb[20752] = gc[29545] or ga(21118, 29545, 22555), tc[sb + 1]
							else
								Ga = Ba("B", Q, Cd)
								Cd, f_ = Cd + 1, gc[-17848] or ga(43660, -17848, 118708)
							end
						elseif f_ <= 38495 then
							m = Ha
							tc = Da(m)
							hb, f_, _a, c = 9, 27539, m + 8, 1
						else
							kc, f_ = nil, 7480
						end
					elseif f_ <= 43838 then
						if f_ < 42502 then
							if f_ <= 41788 then
								Aa = Aa + Tc
								Ca = Aa
								if Aa ~= Aa then
									f_ = gc[-16945] or ga(11031, -16945, 25005)
								else
									f_ = gc[-13476] or ga(17392, -13476, 15159)
								end
							else
								f_, Aa = gc[-214] or ga(59664, -214, 68363), ec(D, 1456099718)
								continue
							end
						elseif f_ > 43650 then
							yd, f_ = nil, gc[12371] or ga(25636, 12371, 13224)
						elseif f_ <= 42502 then
							f_, Ha = gc[-26776] or ga(33776, -26776, 119443), ec(m, 1271749995)
							continue
						else
							sb = 0
							f_, D, Tc, Aa = 56210, 104, 1, 100
						end
					elseif f_ <= 44682 then
						if f_ > 44052 then
							hb, f_ = ec(_a, 1271749995), 2362
							continue
						else
							f_, Ga = 48018, Ja
							continue
						end
					else
						if (Tc >= 0 and Aa > D) or ((Tc < 0 or Tc ~= Tc) and Aa < D) then
							f_ = gc[-29157] or ga(62594, -29157, 114968)
						else
							f_ = gc[-26473] or ga(21698, -26473, 18054)
						end
					end
				elseif f_ > 59792 then
					if f_ > 62491 then
						if f_ < 63946 then
							if f_ >= 63270 then
								if f_ > 63270 then
									f_, Aa = gc[-9385] or ga(45310, -9385, 113313), D
									continue
								else
									Tc = sb
									if Aa ~= Aa then
										f_ = gc[-32335] or ga(38962, -32335, 32437)
									else
										f_ = 20127
									end
								end
							else
								x = x + bc
								Bb = x
								if x ~= x then
									f_ = 36214
								else
									f_ = gc[-2148] or ga(33753, -2148, 122313)
								end
							end
						elseif f_ > 64808 then
							f_, tc[(x - 8)] = gc[-14585] or ga(9004, -14585, 13350), Bb
						elseif f_ > 64582 then
							Mb, f_ = nil, gc[25729] or ga(43660, 25729, 130136)
						elseif f_ > 63946 then
							x = Ba("<I4", Q, Cd)
							f_, Cd = gc[-16038] or ga(31504, -16038, 52977), Cd + 4
						else
							f_, Ha = gc[-19195] or ga(4997, -19195, 12777), nil
						end
					elseif f_ >= 61231 then
						if f_ > 62475 then
							f_, Mb[12968] = gc[11426] or ga(24063, 11426, 23960), tc[Mb[12710] + 1]
						elseif f_ <= 62103 then
							if f_ > 61231 then
								bc = Mb
								if bc == 3 then
									f_ = gc[-439] or ga(13521, -439, 124227)
									continue
								elseif bc == 6 then
									f_ = gc[-23089] or ga(22746, -23089, 21371)
									continue
								elseif bc == 2 then
									f_ = gc[-5792] or ga(11783, -5792, 30844)
									continue
								elseif bc == 4 then
									f_ = gc[6394] or ga(64257, 6394, 21336)
									continue
								end
								f_ = gc[1603] or ga(37517, 1603, 89082)
							else
								Ja = Ba("<d", Q, Cd)
								Cd, f_ = Cd + 8, gc[-10615] or ga(11603, -10615, 106045)
							end
						else
							f_, Ca = gc[-13724] or ga(3991, -13724, 64204), nil
						end
					elseif f_ > 60695 then
						sb[12710] = Db(Pa(x, 8), 255)
						sb[5602] = Db(Pa(x, 16), 255)
						sb[5640], f_ = Db(Pa(x, 24), 255), gc[8943] or ga(62791, 8943, 101052)
					elseif f_ < 60583 then
						Xc = 0
						f_, Za, Ha, Yc = 37932, 41, 1, 45
					elseif f_ <= 60583 then
						Mb[12968] = tc[wa(Mb[9231], 0, 24) + 1]
						f_, Mb[20175] = gc[-25926] or ga(12943, -25926, 112936), wa(Mb[9231], 31, 1) == 1
					else
						if bc == 0 then
							f_ = gc[-29599] or ga(35303, -29599, 98585)
							continue
						elseif bc == 9 then
							f_ = gc[-7188] or ga(43055, -7188, 111878)
							continue
						elseif bc == 3 then
							f_ = gc[17424] or ga(40027, 17424, 27419)
							continue
						else
							f_ = gc[-22363] or ga(49089, -22363, 86443)
							continue
						end
						f_ = gc[-11931] or ga(30293, -11931, 29938)
					end
				elseif f_ >= 56348 then
					if f_ < 58631 then
						if f_ <= 58014 then
							if f_ > 56503 then
								f_, Mb[12968] = gc[25685] or ga(5974, 25685, 105459), tc[Mb[5602] + 1]
							elseif f_ <= 56348 then
								cb = yd
								sb = Fd(sb, fd(Db(cb, 127), (Ca - 100) * 7))
								if not Qa(cb, 128) then
									f_ = gc[7777] or ga(30181, 7777, 10219)
									continue
								end
								f_ = gc[32118] or ga(39756, 32118, 130834)
							else
								f_, x = 12762, ec(Mb, 192)
								continue
							end
						else
							Mb[12968], f_ = tc[Mb[36685] + 1], gc[7050] or ga(22881, 7050, 16894)
						end
					elseif f_ < 59323 then
						if f_ <= 58631 then
							D = Aa
							sb[9231] = D
							cc(Za, {})
							f_ = gc[-720] or ga(1776, -720, 105179)
						else
							f_, Mb[12968] = gc[-7196] or ga(10296, -7196, 103121), wa(Mb[9231], 0, 16)
						end
					elseif f_ >= 59672 then
						if f_ <= 59672 then
							if bc == 7 then
								f_ = gc[22130] or ga(2032, 22130, 114284)
								continue
							elseif bc == 10 then
								f_ = gc[4223] or ga(2982, 4223, 110339)
								continue
							else
								f_ = gc[-17531] or ga(64464, -17531, 122985)
								continue
							end
							f_ = gc[-3115] or ga(49793, -3115, 117022)
						else
							Ga, f_ = Tb(nil), 35520
						end
					else
						x, f_ = nil, 26677
					end
				elseif f_ >= 54746 then
					if f_ < 56202 then
						if f_ <= 54746 then
							K = Ba("B", Q, Cd)
							Cd, f_ = Cd + 1, gc[-12904] or ga(36708, -12904, 23388)
						else
							f_, Ga = gc[-29202] or ga(37791, -29202, 30878), Tb("")
							continue
						end
					elseif f_ <= 56202 then
						c = c + Mb
						bc = c
						if c ~= c then
							f_ = gc[5861] or ga(22122, 5861, 18402)
						else
							f_ = 7842
						end
					else
						Ca = Aa
						if D ~= D then
							f_ = gc[-24586] or ga(19918, -24586, 6244)
						else
							f_ = 44731
						end
					end
				elseif f_ < 54113 then
					if f_ > 53737 then
						Bb, f_ = nil, gc[-16642] or ga(6392, -16642, 25148)
					else
						f_ = gc[-4812] or ga(49301, -4812, 112137)
						continue
					end
				elseif f_ > 54113 then
					Za = Za + Ha
					m = Za
					if Za ~= Za then
						f_ = gc[-21281] or ga(13517, -21281, 22604)
					else
						f_ = gc[-28525] or ga(8459, -28525, 10593)
					end
				else
					f_, hb, c, _a = 48206, 252, 1, Xc + 251
				end
			elseif f_ > 17459 then
				if f_ > 27900 then
					if f_ < 35520 then
						if f_ < 34439 then
							if f_ < 32857 then
								f_, Aa = 38075, nil
							elseif f_ <= 32857 then
								Aa, f_ = nil, 24074
							else
								sb, Aa = Db(Pa(Bb, 10), 1023), Db(Pa(Bb, 0), 1023)
								Mb[20752] = tc[sb + 1]
								Mb[30082], f_ = tc[Aa + 1], gc[12810] or ga(32262, 12810, 31907)
							end
						elseif f_ >= 34839 then
							if f_ <= 34839 then
								Ja, f_ = nil, gc[17343] or ga(55776, 17343, 110940)
							else
								if (bc >= 0 and x > Mb) or ((bc < 0 or bc ~= bc) and x < Mb) then
									f_ = gc[-4457] or ga(48113, -4457, 127609)
								else
									f_ = 37954
								end
							end
						elseif f_ <= 34439 then
							Rc = Ba("B", Q, Cd)
							Cd, f_ = Cd + 1, gc[-21471] or ga(35338, -21471, 16812)
						else
							x = c
							Mb = Db(x, 255)
							bc = Ma[38411][Mb + 1]
							Bb, Ga, Ja = bc[1], bc[2], bc[3]
							sb = {
								[8406] = 0,
								[5602] = 0,
								[12968] = 0,
								[36685] = 0,
								[5640] = 0,
								[9231] = 0,
								[3015] = nil,
								[32667] = 0,
								[18919] = Ga,
								[30082] = 0,
								[20175] = 0,
								[61092] = Mb,
								[12710] = 0,
								[29681] = 0,
								[20752] = 0,
							}
							cc(Za, sb)
							if Bb == 7 then
								f_ = gc[32276] or ga(52319, 32276, 129310)
								continue
							elseif Bb == 4 then
								f_ = gc[-22874] or ga(30458, -22874, 102096)
								continue
							elseif Bb == 2 then
								f_ = gc[-17178] or ga(38612, -17178, 105187)
								continue
							else
								f_ = gc[-480] or ga(16754, -480, 57067)
								continue
							end
							f_ = gc[18436] or ga(42130, 18436, 111627)
						end
					elseif f_ > 36402 then
						if f_ >= 36986 then
							if f_ > 36986 then
								bc = c
								if x ~= x then
									f_ = gc[-5247] or ga(26377, -5247, 22397)
								else
									f_ = 7842
								end
							else
								cb = Ba("B", Q, Cd)
								Cd, f_ = Cd + 1, gc[-27658] or ga(51410, -27658, 110673)
							end
						else
							f_, Ga = gc[20064] or ga(40739, 20064, 118798), Tb(nil)
						end
					elseif f_ >= 36200 then
						if f_ <= 36214 then
							if f_ > 36200 then
								return { [64867] = Sc, [64579] = Za, [44785] = "", [35700] = K, [7021] = c, [6625] = Rc }
							else
								f_, Ja = 47168, ec(sb, 1271749995)
								continue
							end
						else
							bc = Ba("B", Q, Cd)
							f_, Cd = 580, Cd + 1
						end
					elseif f_ <= 35520 then
						Ja = 0
						f_, sb, D, Aa = gc[3639] or ga(51063, 3639, 69459), 213, 1, 217
					else
						tc, f_ = ec(hb, 192), gc[7042] or ga(49950, 7042, 122080)
						continue
					end
				elseif f_ >= 24074 then
					if f_ > 26677 then
						if f_ > 27539 then
							f_ = gc[-26882] or ga(41724, -26882, 129686)
							continue
						elseif f_ <= 27356 then
							if f_ <= 26819 then
								Bb = x
								if Mb ~= Mb then
									f_ = 36214
								else
									f_ = gc[32632] or ga(38723, 32632, 125239)
								end
							else
								hb, f_ = nil, 1054
							end
						else
							x = hb
							if _a ~= _a then
								f_ = 54113
							else
								f_ = 37310
							end
						end
					elseif f_ > 25046 then
						if f_ <= 25754 then
							m = 0
							_a, f_, tc, hb = 1, gc[29728] or ga(27946, 29728, 21684), 122, 126
						else
							Mb = Ba("B", Q, Cd)
							Cd, f_ = Cd + 1, 56503
						end
					elseif f_ <= 24364 then
						if f_ <= 24074 then
							D = Ba("<I4", Q, Cd)
							Cd, f_ = Cd + 4, 42287
						else
							f_ = gc[11057] or ga(22147, 11057, 65030)
							continue
						end
					else
						Bb, f_ = ec(Ga, 192), 51442
						continue
					end
				elseif f_ > 20488 then
					if f_ < 22059 then
						Pc, f_ = ec(Xc, 1271749995), 4069
						continue
					elseif f_ > 22059 then
						_a, f_ = nil, gc[-15249] or ga(22445, -15249, 26938)
					else
						Mb[12968], f_ = tc[Mb[9231] + 1], gc[3562] or ga(1011, 3562, 102284)
					end
				elseif f_ <= 20061 then
					if f_ < 19148 then
						if Ja then
							f_ = gc[22638] or ga(4509, 22638, 22342)
							continue
						else
							f_ = gc[14890] or ga(5155, 14890, 107534)
							continue
						end
						f_ = gc[-21211] or ga(31412, -21211, 30367)
					elseif f_ <= 19148 then
						f_, Mb[12968] = gc[-3210] or ga(59004, -3210, 123925), tc[Mb[29681] + 1]
					else
						Ha = Ha + tc
						hb = Ha
						if Ha ~= Ha then
							f_ = 63946
						else
							f_ = gc[-14763] or ga(43469, -14763, 72487)
						end
					end
				elseif f_ <= 20127 then
					if (D >= 0 and sb > Aa) or ((D < 0 or D ~= D) and sb < Aa) then
						f_ = gc[-539] or ga(50335, -539, 8998)
					else
						f_ = 62475
					end
				else
					hb = hb + c
					x = hb
					if hb ~= hb then
						f_ = 54113
					else
						f_ = gc[-2334] or ga(47039, -2334, 66051)
					end
				end
			elseif f_ < 8059 then
				if f_ > 3232 then
					if f_ <= 6450 then
						if f_ <= 4637 then
							if f_ <= 4162 then
								if f_ > 4069 then
									Bb = Mb[9231]
									Ga, Ja = Pa(Bb, 30), Db(Pa(Bb, 20), 1023)
									Mb[12968] = tc[Ja + 1]
									Mb[8406] = Ga
									if Ga == 2 then
										f_ = gc[-15659] or ga(45965, -15659, 71963)
										continue
									elseif Ga == 3 then
										f_ = gc[-7433] or ga(51771, -7433, 100415)
										continue
									end
									f_ = gc[-12646] or ga(3524, -12646, 101981)
								else
									Xc = Pc
									Za, Yc = Da(Xc), false
									Ha, f_, tc, m = 131, gc[-31794] or ga(30113, -31794, 51588), 1, Xc + 130
								end
							else
								c, f_ = ec(x, 1456099718), 34729
								continue
							end
						elseif f_ > 4870 then
							hb = Ba("B", Q, Cd)
							f_, Cd = 35731, Cd + 1
						else
							oc, f_ = ec(K, 192), gc[-11263] or ga(25186, -11263, 55423)
							continue
						end
					elseif f_ < 7480 then
						Bb, f_ = ia(Ga[1], 1, Ga[2]), gc[5732] or ga(48798, 5732, 98059)
					elseif f_ > 7480 then
						if (Mb >= 0 and c > x) or ((Mb < 0 or Mb ~= Mb) and c < x) then
							f_ = gc[29350] or ga(26422, 29350, 22190)
						else
							f_ = 53855
						end
					else
						Sc = Ba("B", Q, Cd)
						f_, Cd = 49505, Cd + 1
					end
				elseif f_ > 1826 then
					if f_ >= 3168 then
						if f_ <= 3168 then
							f_, tc = 6450, nil
						else
							Mb = Za[(x - 251)]
							bc = Mb[18919]
							if bc == 1 then
								f_ = gc[-247E2] or ga(20275, -247E2, 27287)
								continue
							elseif bc == 6 then
								f_ = gc[26822] or ga(26978, 26822, 99001)
								continue
							elseif bc == 5 then
								f_ = gc[12317] or ga(42782, 12317, 93185)
								continue
							else
								f_ = gc[30771] or ga(43911, 30771, 82546)
								continue
							end
							f_ = gc[-6334] or ga(11995, -6334, 109940)
						end
					elseif f_ <= 2362 then
						_a = hb
						c = Da(_a)
						Mb, x, f_, bc = _a + 162, 163, gc[-20233] or ga(11915, -20233, 17098), 1
					else
						f_, w_ = gc[-2941] or ga(52079, -2941, 9659), ec(Rc, 192)
						continue
					end
				elseif f_ < 1054 then
					if f_ > 272 then
						Mb, f_ = ec(bc, 192), 62103
						continue
					else
						Sc, oc, f_ = kc, nil, gc[-18668] or ga(3113, -18668, 102733)
					end
				elseif f_ > 1819 then
					if Yc then
						f_ = gc[31181] or ga(54608, 31181, 117877)
						continue
					else
						f_ = gc[-18995] or ga(10886, -18995, 14257)
						continue
					end
					f_ = gc[9291] or ga(48848, 9291, 116849)
				elseif f_ <= 1054 then
					_a = 0
					f_, x, c, Mb = 37002, 215, 211, 1
				else
					hb = Ha
					if m ~= m then
						f_ = gc[-22542] or ga(10505, -22542, 118845)
					else
						f_ = 46248
					end
				end
			elseif f_ < 12762 then
				if f_ <= 10981 then
					if f_ <= 10381 then
						if f_ <= 9940 then
							if f_ <= 8059 then
								f_, Ga = 16290, Tb(ec(Ja, 1271749995))
								continue
							else
								Ca, f_ = ec(yd, 192), 17379
								continue
							end
						else
							sb = sb + D
							Tc = sb
							if sb ~= sb then
								f_ = gc[-1622] or ga(25415, -1622, 52174)
							else
								f_ = gc[1323] or ga(31236, 1323, 3175)
							end
						end
					elseif f_ > 10678 then
						K, w_, f_ = oc, nil, gc[-25585] or ga(12433, -25585, 101896)
					else
						Rc, f_, Pc = w_, 60153, nil
					end
				elseif f_ <= 11943 then
					if f_ <= 11476 then
						f_ = gc[30161] or ga(51827, 30161, 109423)
						continue
					else
						f_, Ga = 61231, nil
					end
				else
					yd = Ba("B", Q, Cd)
					Cd, f_ = Cd + 1, 9940
				end
			elseif f_ < 15016 then
				if f_ < 13763 then
					if f_ <= 12762 then
						Mb = x
						m = Fd(m, fd(Db(Mb, 127), (c - 122) * 7))
						if not Qa(Mb, 128) then
							f_ = gc[-24052] or ga(37385, -24052, 100919)
							continue
						end
						f_ = gc[-11708] or ga(51320, -11708, 19271)
					else
						f_, Yc = gc[15964] or ga(61664, 15964, 99713), _a
					end
				elseif f_ <= 13763 then
					f_ = gc[-5274] or ga(24312, -5274, 47487)
					continue
				else
					sb[12710] = Db(Pa(x, 8), 255)
					Aa = Db(Pa(x, 16), 65535)
					sb[32667] = Aa
					D = nil
					D = if Aa < 32768 then Aa else Aa - 65536
					sb[36685], f_ = D, gc[13499] or ga(46191, 13499, 117732)
				end
			elseif f_ < 16290 then
				if f_ > 15016 then
					Ga, f_ = Tb(Aa), 7171
					continue
				else
					if (Ha >= 0 and Za > Yc) or ((Ha < 0 or Ha ~= Ha) and Za < Yc) then
						f_ = gc[14866] or ga(19472, 14866, 55187)
					else
						f_ = 3168
					end
				end
			elseif f_ <= 17379 then
				if f_ > 16290 then
					yd = Ca
					Ja = Fd(Ja, fd(Db(yd, 127), (Tc - 213) * 7))
					if not Qa(yd, 128) then
						f_ = gc[-11510] or ga(57121, -11510, 18012)
						continue
					end
					f_ = gc[18816] or ga(41361, 18816, 106246)
				else
					f_, Bb = gc[-18868] or ga(10285, -18868, 126106), ia(Ga[1], 1, Ga[2])
				end
			else
				tc = tc + _a
				c = tc
				if tc ~= tc then
					f_ = gc[25596] or ga(625, 25596, 25449)
				else
					f_ = gc[29293] or ga(63795, 29293, 128446)
				end
			end
		until f_ == 30702
	end
	local sd = rb()
	Ma[27410][Q] = sd
	return sd
end
local J = function(Zc, pd)
	Zc = Ib(Zc)
	local nd = va()
	local old = hookfunction
	nd.hookfunction = function(f, h)
		return old(f, function(...)
			return h(...)
		end)
	end
	local function ed(q, n_)
		local t_ = function(...)
			return { ... }, Cb("#", ...)
		end
		local Yb
		Yb = function(vc, h, Gb)
			if h > Gb then
				return
			end
			return vc[h], Yb(vc, h + 1, Gb)
		end
		local function Ta(oa, uc, mc, xa)
			local Eb, Pb, Oc, ja, ub, wb, V, zb, jb, u_, G, bd, Ia, ld, v, aa, Na, zc, Uc, Ra, _c, Wb, Oa, kd
			Oa, ja = function(Ab, da, nb)
				ja[nb] = xd(Ab, 18572) - xd(da, 63900)
				return ja[nb]
			end, {}
			u_ = ja[-10210] or Oa(49724, 50594, -10210)
			while u_ ~= 46659 do
				if u_ < 32237 then
					if u_ <= 13837 then
						if u_ >= 6303 then
							if u_ > 10217 then
								if u_ >= 12733 then
									if u_ <= 13261 then
										if u_ <= 12866 then
											if u_ <= 12841 then
												if u_ <= 12733 then
													aa += 1
													u_ = ja[-28553] or Oa(92040, 13768, -28553)
												else
													if zb == 2 then
														u_ = ja[-21568] or Oa(83430, 7994, -21568)
														continue
													end
													u_ = ja[18686] or Oa(11074, 62178, 18686)
												end
											else
												if _c > 95 then
													u_ = ja[-17930] or Oa(14624, 39979, -17930)
													continue
												else
													u_ = ja[4851] or Oa(66879, 42710, 4851)
													continue
												end
												u_ = ja[6472] or Oa(86975, 16671, 6472)
											end
										elseif u_ > 12903 then
											u_, oa[wb[12710]] = ja[22508] or Oa(38791, 11250, 22508), Uc[wb[20752]]
										else
											G, u_ =
												G .. mb(ec(Z(Uc, (zb - 143) + 1), Z(bd, (zb - 143) % #bd + 1))),
												ja[4016] or Oa(95234, 40297, 4016)
										end
									elseif u_ <= 13782 then
										if u_ > 13375 then
											Pb, Uc, bd = Ia
											if qa(Pb) ~= "function" then
												u_ = ja[-17710] or Oa(13978, 60658, -17710)
												continue
											end
											u_ = ja[-31063] or Oa(17044, 61603, -31063)
										else
											Oc = jb[5602]
											Wb = Ia[Oc]
											if Wb == nil then
												u_ = ja[-13026] or Oa(39396, 50562, -13026)
												continue
											else
												u_ = ja[30450] or Oa(88017, 29448, 30450)
												continue
											end
											u_ = ja[-11523] or Oa(70433, 16248, -11523)
										end
									else
										aa -= 1
										u_, mc[aa] =
											ja[-2955] or Oa(57274, 52506, -2955), {
												[61092] = 13,
												[12710] = ec(wb[12710], 222),
												[5602] = ec(wb[5602], 177),
												[5640] = 0,
											}
									end
								elseif u_ >= 12079 then
									if u_ < 12262 then
										if u_ > 12079 then
											if _c > 173 then
												u_ = ja[-23432] or Oa(42238, 17680, -23432)
												continue
											else
												u_ = ja[5395] or Oa(44595, 7251, 5395)
												continue
											end
											u_ = ja[745] or Oa(54591, 49823, 745)
										else
											if _c > 142 then
												u_ = ja[650] or Oa(2396, 52557, 650)
												continue
											else
												u_ = ja[-12283] or Oa(94029, 15501, -12283)
												continue
											end
											u_ = ja[-21109] or Oa(97755, 11067, -21109)
										end
									elseif u_ <= 12262 then
										if _c > 193 then
											u_ = ja[19126] or Oa(48612, 17025, 19126)
											continue
										else
											u_ = ja[-682] or Oa(65120, 26277, -682)
											continue
										end
										u_ = ja[-6021] or Oa(96267, 13387, -6021)
									else
										Ra, u_, Pb = mc[aa], 15450, nil
									end
								elseif u_ >= 10647 then
									if u_ > 10647 then
										aa += wb[36685]
										u_ = ja[-18365] or Oa(68455, 6311, -18365)
									else
										if _c > 131 then
											u_ = ja[25018] or Oa(91978, 45361, 25018)
											continue
										else
											u_ = ja[-30946] or Oa(23150, 61460, -30946)
											continue
										end
										u_ = ja[-30530] or Oa(35710, 39134, -30530)
									end
								else
									if (Na >= 0 and V > zb) or ((Na < 0 or Na ~= Na) and V < zb) then
										u_ = ja[-4828] or Oa(8245, 62988, -4828)
									else
										u_ = ja[2399] or Oa(57756, 37331, 2399)
									end
								end
							elseif u_ >= 8767 then
								if u_ < 9680 then
									if u_ >= 9307 then
										if u_ > 9307 then
											return Yb(oa, Ra, Ra + bd - 1)
										else
											if bd <= Pb then
												u_ = ja[-13478] or Oa(107546, 6082, -13478)
												continue
											else
												u_ = ja[-25764] or Oa(62610, 41202, -25764)
												continue
											end
											u_ = ja[-31852] or Oa(16072, 59912, -31852)
										end
									elseif u_ > 8767 then
										u_, bd = 19199, nil
									else
										if G > 0 then
											u_ = ja[29934] or Oa(45644, 50436, 29934)
											continue
										else
											u_ = ja[11944] or Oa(89005, 56321, 11944)
											continue
										end
										u_ = ja[-5195] or Oa(11887, 64943, -5195)
									end
								elseif u_ <= 9924 then
									if u_ < 9778 then
										if _c > 167 then
											u_ = ja[-19552] or Oa(116869, 27734, -19552)
											continue
										else
											u_ = ja[29104] or Oa(42538, 9746, 29104)
											continue
										end
										u_ = ja[-9535] or Oa(64239, 46639, -9535)
									elseif u_ > 9778 then
										Uc[(ub - 238)], u_ = n_[V[5602] + 1], ja[-29274] or Oa(91947, 11979, -29274)
									else
										u_, V =
											ja[-30438] or Oa(14912, 41710, -30438),
											V .. mb(ec(Z(kd, (Eb - 9) + 1), Z(ub, (Eb - 9) % #ub + 1)))
									end
								else
									Ra, Pb = nil, ec(wb[32667], 4254)
									Ra = if Pb < 32768 then Pb else Pb - 65536
									Uc = Ra
									u_, oa[ec(wb[12710], 21)] = ja[2701] or Oa(33753, 37177, 2701), Uc
								end
							elseif u_ <= 7414 then
								if u_ >= 7276 then
									if u_ <= 7291 then
										if u_ > 7276 then
											v = false
											aa += 1
											if _c > 135 then
												u_ = ja[9823] or Oa(57651, 44737, 9823)
												continue
											else
												u_ = ja[16817] or Oa(70541, 14360, 16817)
												continue
											end
											u_ = ja[-8306] or Oa(89822, 19006, -8306)
										else
											ib(kd)
											u_ = ja[-18515] or Oa(83537, 37463, -18515)
										end
									else
										aa += wb[36685]
										u_ = ja[13682] or Oa(85458, 23346, 13682)
									end
								elseif u_ > 6303 then
									u_, oa[wb[5602]] = ja[9789] or Oa(55614, 54942, 9789), oa[wb[5640]] + oa[wb[12710]]
								else
									Ra = wb[12710]
									Pb, Uc = oa[Ra], oa[Ra + 1]
									bd = oa[Ra + 2] + Uc
									oa[Ra + 2] = bd
									if Uc > 0 then
										u_ = ja[-31889] or Oa(55142, 33299, -31889)
										continue
									else
										u_ = ja[-27301] or Oa(34516, 54004, -27301)
										continue
									end
									u_ = ja[-14518] or Oa(62229, 41333, -14518)
								end
							elseif u_ >= 7989 then
								if u_ > 7989 then
									if _c > 62 then
										u_ = ja[15506] or Oa(38318, 31815, 15506)
										continue
									else
										u_ = ja[30459] or Oa(87106, 24172, 30459)
										continue
									end
									u_ = ja[15814] or Oa(96209, 9521, 15814)
								else
									V = G
									if kd ~= kd then
										u_ = ja[-14238] or Oa(43528, 52922, -14238)
									else
										u_ = ja[-19370] or Oa(88753, 39485, -19370)
									end
								end
							else
								if _c > 143 then
									u_ = ja[18298] or Oa(54579, 48315, 18298)
									continue
								else
									u_ = ja[15912] or Oa(4613, 53958, 15912)
									continue
								end
								u_ = ja[7961] or Oa(8310, 65494, 7961)
							end
						elseif u_ > 3061 then
							if u_ > 4747 then
								if u_ <= 5699 then
									if u_ >= 5644 then
										if u_ <= 5644 then
											ub = ub + zb
											Na = ub
											if ub ~= ub then
												u_ = ja[-30491] or Oa(83682, 21026, -30491)
											else
												u_ = ja[-70] or Oa(94174, 24556, -70)
											end
										else
											aa += 1
											u_ = ja[17995] or Oa(60168, 47432, 17995)
										end
									elseif u_ <= 4849 then
										wb = mc[aa]
										u_, _c = ja[7988] or Oa(85866, 4855, 7988), wb[61092]
									else
										if _c > 225 then
											u_ = ja[14713] or Oa(49167, 43825, 14713)
											continue
										else
											u_ = ja[20868] or Oa(118387, 341, 20868)
											continue
										end
										u_ = ja[26834] or Oa(83526, 21894, 26834)
									end
								elseif u_ < 6067 then
									zb = zb + jb
									Eb = zb
									if zb ~= zb then
										u_ = ja[32231] or Oa(2203, 53165, 32231)
									else
										u_ = ja[3360] or Oa(86847, 35775, 3360)
									end
								elseif u_ <= 6067 then
									if _c > 186 then
										u_ = ja[20924] or Oa(63355, 40255, 20924)
										continue
									else
										u_ = ja[507] or Oa(33140, 59419, 507)
										continue
									end
									u_ = ja[-7947] or Oa(39287, 38615, -7947)
								else
									if wb[5640] == 138 then
										u_ = ja[28112] or Oa(43586, 45546, 28112)
										continue
									else
										u_ = ja[-25870] or Oa(42551, 40328, -25870)
										continue
									end
									u_ = ja[-16633] or Oa(59800, 51192, -16633)
								end
							elseif u_ > 4291 then
								if u_ > 4582 then
									kd[1] = kd[3][kd[2]]
									kd[3] = kd
									kd[2] = 1
									u_, Ia[G] = ja[15701] or Oa(671, 45222, 15701), nil
								elseif u_ > 4535 then
									V = wc(G)
									if V == nil then
										u_ = ja[25158] or Oa(88990, 41290, 25158)
										continue
									end
									u_ = 13902
								else
									oa[Ra] = G
									Pb, u_ = G, ja[15216] or Oa(61075, 46013, 15216)
								end
							elseif u_ < 3864 then
								if u_ > 3229 then
									oa[wb[5640]], u_ =
										oa[wb[12710]] - oa[wb[5602]], ja[30071] or Oa(56467, 51443, 30071)
								else
									aa += 1
									u_ = ja[17165] or Oa(12858, 57754, 17165)
								end
							elseif u_ >= 4137 then
								if u_ <= 4137 then
									if _c > 226 then
										u_ = ja[7745] or Oa(97630, 7834, 7745)
										continue
									else
										u_ = ja[19367] or Oa(14086, 37486, 19367)
										continue
									end
									u_ = ja[20200] or Oa(46378, 25450, 20200)
								else
									aa -= 1
									mc[aa], u_ =
										{
											[61092] = 226,
											[12710] = ec(wb[12710], 109),
											[5602] = ec(wb[5602], 57),
											[5640] = 0,
										}, ja[26580] or Oa(12082, 64658, 26580)
								end
							else
								u_, oa[wb[5640]][oa[wb[12710]]] = ja[-6628] or Oa(89785, 18969, -6628), oa[wb[5602]]
							end
						elseif u_ <= 1823 then
							if u_ > 834 then
								if u_ <= 1591 then
									if u_ <= 1543 then
										if u_ > 1242 then
											Ra = fa_(Pb)
											if Ra ~= nil and Ra["__iter"] ~= nil then
												u_ = ja[-29868] or Oa(81246, 27890, -29868)
												continue
											else
												u_ = ja[20694] or Oa(16818, 64155, 20694)
												continue
											end
											u_ = ja[-10870] or Oa(94883, 19822, -10870)
										else
											Ra, Pb = wb[12710], wb[5602] - 1
											if Pb == -1 then
												u_ = ja[-10261] or Oa(126637, 8844, -10261)
												continue
											end
											u_ = ja[-7246] or Oa(11502, 58637, -7246)
										end
									else
										if qa(Pb) == "table" then
											u_ = ja[24449] or Oa(125295, 1389, 24449)
											continue
										else
											u_ = ja[26696] or Oa(58429, 57064, 26696)
											continue
										end
										u_ = ja[9530] or Oa(53383, 60242, 9530)
									end
								else
									G, kd = Pb(Uc, bd)
									bd = G
									if bd == nil then
										u_ = ja[26552] or Oa(47110, 61185, 26552)
									else
										u_ = 56491
									end
								end
							elseif u_ <= 240 then
								if u_ > 217 then
									if _c > 159 then
										u_ = ja[778] or Oa(33851, 24443, 778)
										continue
									else
										u_ = ja[-22141] or Oa(67938, 1467, -22141)
										continue
									end
									u_ = ja[-21535] or Oa(53532, 53116, -21535)
								elseif u_ <= 81 then
									if _c > 28 then
										u_ = ja[-18045] or Oa(16281, 52626, -18045)
										continue
									else
										u_ = ja[7828] or Oa(125383, 21347, 7828)
										continue
									end
									u_ = ja[-22262] or Oa(38594, 33282, -22262)
								else
									G, kd = Pb(Uc, bd)
									bd = G
									if bd == nil then
										u_ = ja[26685] or Oa(85021, 22653, 26685)
									else
										u_ = 59570
									end
								end
							elseif u_ <= 780 then
								aa += 1
								u_ = ja[-14275] or Oa(54758, 49958, -14275)
							else
								if Ra == 3 then
									u_ = ja[-23969] or Oa(120610, 3005, -23969)
									continue
								else
									u_ = ja[7848] or Oa(90411, 5636, 7848)
									continue
								end
								u_ = ja[4496] or Oa(55481, 44986, 4496)
							end
						elseif u_ > 2491 then
							if u_ > 2605 then
								Ra, Pb, Uc = wb[12968], wb[20175], oa[wb[12710]]
								if (Uc == Ra) ~= Pb then
									u_ = ja[30273] or Oa(92512, 12209, 30273)
									continue
								else
									u_ = ja[-15993] or Oa(45857, 7414, -15993)
									continue
								end
								u_ = ja[22967] or Oa(15094, 63062, 22967)
							elseif u_ <= 2534 then
								G, u_ = V, ja[-18804] or Oa(45128, 62694, -18804)
								continue
							else
								Pb[12968] = Uc
								if Ra == 2 then
									u_ = ja[27287] or Oa(15665, 43868, 27287)
									continue
								else
									u_ = ja[3775] or Oa(62594, 16720, 3775)
									continue
								end
								u_ = 14863
							end
						elseif u_ > 2487 then
							oa[Ra + 2] = oa[Ra + 3]
							aa += wb[36685]
							u_ = ja[-7045] or Oa(44161, 30913, -7045)
						elseif u_ <= 2394 then
							if u_ > 2008 then
								if _c > 128 then
									u_ = ja[20958] or Oa(89179, 10590, 20958)
									continue
								else
									u_ = ja[13837] or Oa(82630, 28493, 13837)
									continue
								end
								u_ = ja[1234] or Oa(52766, 55934, 1234)
							else
								kd[(Na - 148)], u_ = n_[jb[5602] + 1], ja[-32521] or Oa(12585, 39429, -32521)
							end
						else
							aa -= 1
							u_, mc[aa] =
								ja[-19340] or Oa(85888, 24000, -19340),
								{ [61092] = 29, [12710] = ec(wb[12710], 117), [5602] = ec(wb[5602], 127), [5640] = 0 }
						end
					elseif u_ <= 22126 then
						if u_ <= 17617 then
							if u_ <= 16362 then
								if u_ <= 14863 then
									if u_ < 14081 then
										if u_ <= 13902 then
											oa[Ra + 1] = V
											G, u_ = V, ja[-24235] or Oa(52552, 58504, -24235)
										else
											Ra = wb[12968]
											oa[wb[5640]] = oa[wb[12710]][Ra]
											aa += 1
											u_ = ja[15389] or Oa(42955, 29963, 15389)
										end
									elseif u_ >= 14686 then
										if u_ > 14686 then
											wb[61092] = 203
											aa += 1
											u_ = ja[31363] or Oa(60391, 47399, 31363)
										else
											Ra = n_[wb[5602] + 1]
											oa[wb[12710]], u_ = Ra[3][Ra[2]], ja[-13538] or Oa(15225, 59609, -13538)
										end
									else
										ub = ub + zb
										Na = ub
										if ub ~= ub then
											u_ = ja[30334] or Oa(34544, 61953, 30334)
										else
											u_ = ja[19881] or Oa(77471, 1908, 19881)
										end
									end
								elseif u_ >= 15450 then
									if u_ <= 15450 then
										Uc, bd = Ra[12968], wb[12968]
										bd = "\160\187\202\189" .. bd
										G = ""
										u_, V, kd, ub = ja[29498] or Oa(45154, 39012, 29498), 1, 143, (#Uc - 1) + 143
									else
										Ra, Pb, Uc = wb[5640], wb[12710], wb[12968]
										bd = oa[Pb]
										oa[Ra + 1] = bd
										oa[Ra] = bd[Uc]
										aa += 1
										u_ = ja[10520] or Oa(49626, 57146, 10520)
									end
								elseif u_ > 14923 then
									Pb, Uc, bd = ld
									if qa(Pb) ~= "function" then
										u_ = ja[19869] or Oa(43781, 62376, 19869)
										continue
									end
									u_ = ja[-21882] or Oa(65064, 22041, -21882)
								else
									if _c > 197 then
										u_ = ja[-10029] or Oa(51074, 42189, -10029)
										continue
									else
										u_ = ja[-23889] or Oa(84194, 32101, -23889)
										continue
									end
									u_ = ja[-12751] or Oa(48144, 26736, -12751)
								end
							elseif u_ >= 17178 then
								if u_ < 17429 then
									if u_ <= 17178 then
										Fb(kd, 1, Pb, Ra + 3, oa)
										oa[Ra + 2] = oa[Ra + 3]
										aa += wb[36685]
										u_ = ja[-7850] or Oa(12737, 61185, -7850)
									else
										Pb, Uc, bd = Ra["__iter"](Pb)
										u_ = ja[-14418] or Oa(20867, 57770, -14418)
									end
								elseif u_ <= 17429 then
									if wb[5640] == 67 then
										u_ = ja[-11964] or Oa(93693, 31779, -11964)
										continue
									else
										u_ = ja[18143] or Oa(87146, 44050, 18143)
										continue
									end
									u_ = ja[15733] or Oa(65535, 44383, 15733)
								else
									ib("")
									u_ = ja[-27899] or Oa(64860, 39971, -27899)
								end
							elseif u_ >= 16988 then
								if u_ > 16988 then
									if wb[5640] == 90 then
										u_ = ja[-8050] or Oa(43182, 40184, -8050)
										continue
									else
										u_ = ja[-10213] or Oa(15597, 38427, -10213)
										continue
									end
									u_ = ja[30396] or Oa(93177, 14681, 30396)
								else
									if _c > 22 then
										u_ = ja[24938] or Oa(4856, 41919, 24938)
										continue
									else
										u_ = ja[3834] or Oa(104187, 3868, 3834)
										continue
									end
									u_ = ja[15526] or Oa(64292, 43364, 15526)
								end
							else
								u_, ub =
									ja[-7894] or Oa(42390, 56958, -7894),
									ub .. mb(ec(Z(G, (jb - 241) + 1), Z(kd, (jb - 241) % #kd + 1)))
							end
						elseif u_ <= 20240 then
							if u_ <= 19391 then
								if u_ <= 18540 then
									if u_ < 18385 then
										if _c > 146 then
											u_ = ja[28361] or Oa(71011, 19408, 28361)
											continue
										else
											u_ = ja[-9889] or Oa(52444, 40594, -9889)
											continue
										end
										u_ = ja[-16571] or Oa(76451, 1763, -16571)
									elseif u_ <= 18385 then
										Fb(xa[19604], 1, Pb, Ra, oa)
										u_ = ja[31328] or Oa(33888, 37792, 31328)
									else
										if _c > 53 then
											u_ = ja[1088] or Oa(49071, 28143, 1088)
											continue
										else
											u_ = ja[-12830] or Oa(77916, 1496, -12830)
											continue
										end
										u_ = ja[-2436] or Oa(36202, 39594, -2436)
									end
								elseif u_ <= 19199 then
									G, kd = Pb[20752], wb[20752]
									kd = "\160\187\202\189" .. kd
									ub = ""
									zb, u_, V, Na = (#G - 1) + 243, 62603, 243, 1
								else
									aa += wb[36685]
									u_ = ja[27904] or Oa(70743, 951, 27904)
								end
							elseif u_ < 20172 then
								zc, aa, Ia, u_, ld, v =
									-1, 1, z({}, { ["__mode"] = "vs" }), 25264, z({}, { ["__mode"] = "ks" }), false
							elseif u_ <= 20172 then
								Ra = uc[wb[12968] + 1]
								Pb = Ra[6625]
								Uc = Da(Pb)
								oa[wb[12710]] = ed(Ra, Uc)
								G, kd, bd, u_ = Pb + 238, 1, 239, 54567
							else
								if _c > 35 then
									u_ = ja[-24408] or Oa(62167, 49114, -24408)
									continue
								else
									u_ = ja[435] or Oa(41687, 24163, 435)
									continue
								end
								u_ = ja[791] or Oa(94416, 11312, 791)
							end
						elseif u_ >= 21133 then
							if u_ < 22092 then
								if u_ > 21133 then
									G, kd = Pb[20752], wb[20752]
									kd = "\160\187\202\189" .. kd
									ub = ""
									u_, V, zb, Na = 60290, 241, (#G - 1) + 241, 1
								else
									kd[1] = kd[3][kd[2]]
									kd[3] = kd
									kd[2] = 1
									Ia[G], u_ = nil, ja[-32322] or Oa(46424, 33035, -32322)
								end
							elseif u_ <= 22092 then
								u_, oa[wb[12710]] = ja[-7337] or Oa(63512, 23147, -7337), Uc
							else
								aa += 1
								u_ = ja[28869] or Oa(46877, 25981, 28869)
							end
						elseif u_ <= 20826 then
							if u_ <= 20497 then
								oa[Ra + 2] = jb
								u_, V = ja[-25310] or Oa(13493, 41062, -25310), jb
							else
								if _c > 236 then
									u_ = ja[-19116] or Oa(90364, 47318, -19116)
									continue
								else
									u_ = ja[-8] or Oa(71671, 22109, -8)
									continue
								end
								u_ = ja[-4553] or Oa(38861, 34061, -4553)
							end
						else
							if _c > 203 then
								u_ = ja[-11945] or Oa(54797, 61637, -11945)
								continue
							else
								u_ = ja[2556] or Oa(64732, 31877, 2556)
								continue
							end
							u_ = ja[-6949] or Oa(47515, 30715, -6949)
						end
					elseif u_ < 26411 then
						if u_ > 23380 then
							if u_ >= 24827 then
								if u_ < 24985 then
									if u_ > 24827 then
										bd, G = Pb[12968], wb[12968]
										G = "\160\187\202\189" .. G
										kd = ""
										V, ub, zb, u_ = (#bd - 1) + 73, 73, 1, ja[-26167] or Oa(73925, 20178, -26167)
									else
										if _c > 234 then
											u_ = ja[18493] or Oa(35320, 29066, 18493)
											continue
										else
											u_ = ja[-6667] or Oa(46740, 62644, -6667)
											continue
										end
										u_ = ja[-10350] or Oa(37918, 32894, -10350)
									end
								elseif u_ > 24985 then
									if not v then
										u_ = ja[-28252] or Oa(24315, 64026, -28252)
										continue
									else
										u_ = ja[3668] or Oa(4819, 50296, 3668)
										continue
									end
									u_ = 7291
								else
									G = wc(Pb)
									if G == nil then
										u_ = ja[-7594] or Oa(87121, 39777, -7594)
										continue
									else
										u_ = ja[15681] or Oa(39614, 14823, 15681)
										continue
									end
									u_ = ja[21491] or Oa(14527, 42976, 21491)
								end
							elseif u_ < 23709 then
								G, kd = oa[Ra + 1], nil
								ub = G
								kd = l_(ub) == "number"
								if not kd then
									u_ = ja[30471] or Oa(9927, 42489, 30471)
									continue
								end
								u_ = 26800
							elseif u_ > 23709 then
								Pb[20752] = bd
								u_, G = ja[-2626] or Oa(53643, 53986, -2626), nil
							else
								Ra, Pb = oa[wb[12710]], nil
								Pb = l_(Ra) == "function"
								if not Pb then
									u_ = ja[-25478] or Oa(33322, 61683, -25478)
									continue
								else
									u_ = ja[-17279] or Oa(120917, 21625, -17279)
									continue
								end
								u_ = 58100
							end
						elseif u_ >= 22680 then
							if u_ < 22825 then
								if u_ <= 22680 then
									if not oa[wb[12710]] then
										u_ = ja[10782] or Oa(13256, 43153, 10782)
										continue
									else
										u_ = ja[9783] or Oa(47720, 27048, 9783)
										continue
									end
									u_ = ja[8967] or Oa(42021, 28773, 8967)
								else
									u_, oa[wb[12710]] = ja[31561] or Oa(9294, 62350, 31561), oa[wb[5640]] / wb[12968]
								end
							elseif u_ > 22825 then
								oa[wb[12710]], u_ = #oa[wb[5602]], ja[8376] or Oa(62011, 41371, 8376)
							else
								u_, bd = 23889, ub
								continue
							end
						elseif u_ >= 22533 then
							if u_ > 22533 then
								bd = bd + kd
								ub = bd
								if bd ~= bd then
									u_ = ja[29980] or Oa(94591, 11999, 29980)
								else
									u_ = ja[-5492] or Oa(90634, 47736, -5492)
								end
							else
								V = V + Na
								jb = V
								if V ~= V then
									u_ = ja[26688] or Oa(96283, 32064, 26688)
								else
									u_ = 47791
								end
							end
						elseif u_ <= 22343 then
							Ra, Pb, Uc = wb[5602], wb[12710], wb[5640] - 1
							if Uc == -1 then
								u_ = ja[-16443] or Oa(81989, 39266, -16443)
								continue
							else
								u_ = ja[11608] or Oa(119624, 21154, 11608)
								continue
							end
							u_ = 61574
						else
							aa -= 1
							mc[aa], u_ =
								{ [61092] = 131, [12710] = ec(wb[12710], 57), [5602] = ec(wb[5602], 43), [5640] = 0 },
								ja[-27984] or Oa(54126, 49326, -27984)
						end
					elseif u_ < 29226 then
						if u_ > 26800 then
							if u_ > 28041 then
								Pb, u_ = G, 53827
								continue
							elseif u_ <= 27604 then
								u_, kd =
									ja[-3054] or Oa(6335, 57518, -3054),
									kd .. mb(ec(Z(bd, (Na - 73) + 1), Z(G, (Na - 73) % #G + 1)))
							else
								kd, ub = Pb[30082], wb[30082]
								ub = "\160\187\202\189" .. ub
								V = ""
								jb, Na, u_, zb = 1, (#kd - 1) + 9, 41175, 9
							end
						elseif u_ > 26792 then
							V, zb = oa[Ra + 2], nil
							Na = V
							zb = l_(Na) == "number"
							if not zb then
								u_ = ja[23601] or Oa(121242, 20248, 23601)
								continue
							end
							u_ = ja[-27974] or Oa(30494, 58575, -27974)
						elseif u_ <= 26696 then
							if u_ > 26411 then
								aa += 1
								u_ = ja[-5037] or Oa(56620, 52076, -5037)
							else
								if (zb >= 0 and ub > V) or ((zb < 0 or zb ~= zb) and ub < V) then
									u_ = ja[-24919] or Oa(126373, 7126, -24919)
								else
									u_ = ja[10915] or Oa(50290, 55478, 10915)
								end
							end
						else
							Ra = fa_(Pb)
							if Ra ~= nil and Ra["__iter"] ~= nil then
								u_ = ja[-4994] or Oa(55299, 46223, -4994)
								continue
							elseif qa(Pb) == "table" then
								u_ = ja[-16859] or Oa(87680, 30195, -16859)
								continue
							end
							u_ = ja[-12748] or Oa(56068, 27443, -12748)
						end
					elseif u_ <= 31422 then
						if u_ > 29717 then
							if u_ <= 29918 then
								oa[wb[12710]], u_ = oa[wb[5640]][wb[5602] + 1], ja[6007] or Oa(84283, 26267, 6007)
							else
								aa -= 1
								u_, mc[aa] =
									ja[5152] or Oa(95762, 8818, 5152), {
										[61092] = 234,
										[12710] = ec(wb[12710], 174),
										[5602] = ec(wb[5602], 178),
										[5640] = 0,
									}
							end
						elseif u_ < 29561 then
							Pb, Uc, bd = xb(Pb)
							u_ = ja[-6887] or Oa(46773, 3718, -6887)
						elseif u_ > 29561 then
							if _c > 58 then
								u_ = ja[23255] or Oa(14481, 46769, 23255)
								continue
							else
								u_ = ja[15361] or Oa(45492, 18768, 15361)
								continue
							end
							u_ = ja[29351] or Oa(64288, 43360, 29351)
						else
							if _c > 126 then
								u_ = ja[-3485] or Oa(84449, 60459, -3485)
								continue
							else
								u_ = ja[-11852] or Oa(93798, 25521, -11852)
								continue
							end
							u_ = ja[-13078] or Oa(95777, 8801, -13078)
						end
					elseif u_ <= 31884 then
						if u_ > 31605 then
							if _c > 50 then
								u_ = ja[-13436] or Oa(118313, 21201, -13436)
								continue
							else
								u_ = ja[-19434] or Oa(70968, 18909, -19434)
								continue
							end
							u_ = ja[-11949] or Oa(40645, 35333, -11949)
						else
							oa[wb[5640]], u_ = oa[wb[12710]][oa[wb[5602]]], ja[24076] or Oa(13123, 57475, 24076)
						end
					else
						if _c > 3 then
							u_ = ja[-23839] or Oa(33412, 35057, -23839)
							continue
						else
							u_ = ja[4311] or Oa(47435, 57219, 4311)
							continue
						end
						u_ = ja[-12595] or Oa(93337, 14585, -12595)
					end
				elseif u_ > 48931 then
					if u_ >= 57444 then
						if u_ >= 60804 then
							if u_ <= 62721 then
								if u_ < 61574 then
									if u_ <= 60939 then
										if u_ <= 60880 then
											if u_ <= 60804 then
												if not (Pb <= V) then
													u_ = ja[27791] or Oa(49676, 37910, 27791)
													continue
												end
												u_ = ja[21561] or Oa(91487, 12991, 21561)
											else
												G, kd = Kc(ld[wb], Uc, oa[Ra + 1], oa[Ra + 2])
												if not G then
													u_ = ja[-27630] or Oa(55316, 36272, -27630)
													continue
												end
												u_ = ja[-7701] or Oa(84761, 39199, -7701)
											end
										else
											bd, u_ = zc - Ra + 1, ja[32269] or Oa(35200, 25139, 32269)
										end
									else
										if _c > 82 then
											u_ = ja[31880] or Oa(32119, 65009, 31880)
											continue
										else
											u_ = ja[-18254] or Oa(73108, 21033, -18254)
											continue
										end
										u_ = ja[5997] or Oa(55229, 50461, 5997)
									end
								elseif u_ > 62139 then
									if u_ > 62603 then
										if _c > 238 then
											u_ = ja[-11247] or Oa(74574, 22668, -11247)
											continue
										else
											u_ = ja[25376] or Oa(59924, 43170, 25376)
											continue
										end
										u_ = ja[-32132] or Oa(83458, 21058, -32132)
									else
										jb = V
										if zb ~= zb then
											u_ = ja[13060] or Oa(33801, 55638, 13060)
										else
											u_ = ja[-26909] or Oa(129429, 4086, -26909)
										end
									end
								elseif u_ < 61680 then
									Fb(oa, Pb, Pb + Uc - 1, wb[9231], oa[Ra])
									aa += 1
									u_ = ja[24696] or Oa(48230, 27558, 24696)
								elseif u_ <= 61680 then
									if wb[5640] == 66 then
										u_ = ja[3358] or Oa(69742, 42359, 3358)
										continue
									else
										u_ = ja[17449] or Oa(43237, 58109, 17449)
										continue
									end
									u_ = ja[8448] or Oa(71351, 535, 8448)
								else
									G = { Uc(oa[Ra + 1], oa[Ra + 2]) }
									Fb(G, 1, Pb, Ra + 3, oa)
									if oa[Ra + 3] ~= nil then
										u_ = ja[-2687] or Oa(1955, 48360, -2687)
										continue
									else
										u_ = ja[-31582] or Oa(41964, 28014, -31582)
										continue
									end
									u_ = ja[21464] or Oa(40729, 36217, 21464)
								end
							elseif u_ >= 64334 then
								if u_ >= 64790 then
									if u_ <= 64790 then
										bd = oa[Ra]
										kd, u_, ub, G = Pb, ja[-27530] or Oa(52107, 39502, -27530), 1, Ra + 1
									else
										aa += wb[36685]
										u_ = ja[16499] or Oa(12196, 64996, 16499)
									end
								elseif u_ <= 64334 then
									V = mc[aa]
									aa += 1
									zb = V[12710]
									if zb == 0 then
										u_ = ja[-2085] or Oa(60136, 57843, -2085)
										continue
									else
										u_ = ja[30941] or Oa(47441, 17960, 30941)
										continue
									end
									u_ = ja[-26108] or Oa(60648, 46472, -26108)
								else
									aa -= 1
									mc[aa], u_ =
										{
											[61092] = 235,
											[12710] = ec(wb[12710], 181),
											[5602] = ec(wb[5602], 146),
											[5640] = 0,
										}, ja[-12418] or Oa(57569, 48161, -12418)
								end
							elseif u_ > 63052 then
								aa += 1
								u_ = ja[12240] or Oa(47507, 30707, 12240)
							elseif u_ <= 62979 then
								u_, Pb[20752] = ja[-3457] or Oa(4233, 58474, -3457), bd
							else
								if _c > 24 then
									u_ = ja[-15588] or Oa(79889, 20055, -15588)
									continue
								else
									u_ = ja[367] or Oa(91993, 18637, 367)
									continue
								end
								u_ = ja[27582] or Oa(47814, 30214, 27582)
							end
						elseif u_ >= 59285 then
							if u_ > 60234 then
								if u_ >= 60290 then
									if u_ <= 60290 then
										jb = V
										if zb ~= zb then
											u_ = ja[29529] or Oa(86545, 14568, 29529)
										else
											u_ = 10554
										end
									else
										Ra, Pb, Uc = ec(wb[5640], 211), ec(wb[12710], 236), ec(wb[5602], 46)
										bd, G = Pb == 0 and zc - Ra or Pb - 1, oa[Ra]
										kd, ub = t_(G(Yb(oa, Ra + 1, Ra + bd)))
										if Uc == 0 then
											u_ = ja[-20066] or Oa(77179, 19289, -20066)
											continue
										else
											u_ = ja[15226] or Oa(93954, 25685, 15226)
											continue
										end
										u_ = ja[-11303] or Oa(87226, 50014, -11303)
									end
								else
									aa += wb[36685]
									u_ = ja[-31531] or Oa(71396, 548, -31531)
								end
							elseif u_ <= 59570 then
								if u_ < 59383 then
									if Eb == 1 then
										u_ = ja[31057] or Oa(65252, 31669, 31057)
										continue
									else
										u_ = ja[23117] or Oa(93791, 42231, 23117)
										continue
									end
									u_ = ja[-1899] or Oa(36331, 22215, -1899)
								elseif u_ > 59383 then
									if kd[2] >= wb[12710] then
										u_ = ja[28029] or Oa(7601, 47918, 28029)
										continue
									end
									u_ = ja[29260] or Oa(53136, 32735, 29260)
								else
									if _c > 12 then
										u_ = ja[-27607] or Oa(120345, 9966, -27607)
										continue
									else
										u_ = ja[9998] or Oa(96823, 31580, 9998)
										continue
									end
									u_ = ja[-26090] or Oa(90123, 15435, -26090)
								end
							elseif u_ <= 59967 then
								if oa[wb[12710]] <= oa[wb[9231]] then
									u_ = ja[31805] or Oa(75315, 31454, 31805)
									continue
								else
									u_ = ja[16071] or Oa(93625, 54656, 16071)
									continue
								end
								u_ = ja[-8229] or Oa(92639, 18239, -8229)
							else
								u_, Pb[30082] = ja[12069] or Oa(38121, 23498, 12069), G
							end
						elseif u_ < 58849 then
							if u_ < 57716 then
								Pb, Uc, bd = Ra["__iter"](Pb)
								u_ = ja[21809] or Oa(65493, 52096, 21809)
							elseif u_ <= 57716 then
								Fb(kd, 1, ub, Ra, oa)
								u_ = ja[16764] or Oa(87419, 17115, 16764)
							else
								aa += wb[36685]
								u_ = ja[-28166] or Oa(87563, 16971, -28166)
							end
						elseif u_ < 59161 then
							if u_ <= 58849 then
								aa += wb[36685]
								u_ = ja[-1235] or Oa(46383, 25455, -1235)
							else
								if (kd >= 0 and bd > G) or ((kd < 0 or kd ~= kd) and bd < G) then
									u_ = ja[-29065] or Oa(55547, 54363, -29065)
								else
									u_ = 64334
								end
							end
						elseif u_ > 59161 then
							oa[wb[5602]] = wb[5640] == 1
							aa += wb[12710]
							u_ = ja[-1736] or Oa(67458, 5570, -1736)
						else
							if _c > 132 then
								u_ = ja[-22354] or Oa(55752, 43206, -22354)
								continue
							else
								u_ = ja[8880] or Oa(4922, 47755, 8880)
								continue
							end
							u_ = ja[-23897] or Oa(12008, 64040, -23897)
						end
					elseif u_ < 53827 then
						if u_ < 50488 then
							if u_ >= 49887 then
								if u_ > 50130 then
									if wb[5640] == 106 then
										u_ = ja[891] or Oa(95574, 34286, 891)
										continue
									else
										u_ = ja[26223] or Oa(38972, 16720, 26223)
										continue
									end
									u_ = ja[-22850] or Oa(32918, 40182, -22850)
								elseif u_ < 49894 then
									Uc, u_ = kd, ja[-20127] or Oa(4126, 47097, -20127)
									continue
								elseif u_ > 49894 then
									aa += 1
									u_ = ja[-27824] or Oa(72991, 2943, -27824)
								else
									bd ..= oa[V]
									u_ = ja[-16271] or Oa(119636, 15185, -16271)
								end
							elseif u_ >= 49463 then
								if u_ <= 49463 then
									Uc = mc[aa + wb[36685]]
									if ld[Uc] == nil then
										u_ = ja[31910] or Oa(41341, 55103, 31910)
										continue
									else
										u_ = ja[6862] or Oa(129281, 14085, 6862)
										continue
									end
									u_ = ja[-32190] or Oa(85923, 56743, -32190)
								else
									aa -= 1
									u_, mc[aa] =
										ja[14924] or Oa(8742, 65126, 14924), {
											[61092] = 35,
											[12710] = ec(wb[12710], 112),
											[5602] = ec(wb[5602], 171),
											[5640] = 0,
										}
								end
							else
								if (V >= 0 and kd > ub) or ((V < 0 or V ~= V) and kd < ub) then
									u_ = ja[-7206] or Oa(15935, 64645, -7206)
								else
									u_ = 12903
								end
							end
						elseif u_ > 51890 then
							if u_ > 52136 then
								if oa[wb[12710]] == oa[wb[9231]] then
									u_ = ja[-28929] or Oa(80452, 22922, -28929)
									continue
								else
									u_ = ja[-20136] or Oa(68552, 34542, -20136)
									continue
								end
								u_ = ja[-7106] or Oa(95106, 8642, -7106)
							elseif u_ <= 51985 then
								Pb = xa[59208]
								u_, zc = ja[-15833] or Oa(58086, 39685, -15833), Ra + Pb - 1
							else
								if oa[wb[12710]] then
									u_ = ja[-8142] or Oa(38170, 54094, -8142)
									continue
								else
									u_ = ja[-3184] or Oa(87666, 17874, -3184)
									continue
								end
								u_ = ja[31168] or Oa(48098, 26914, 31168)
							end
						elseif u_ >= 51032 then
							if u_ <= 51560 then
								if u_ > 51032 then
									if Eb == 2 then
										u_ = ja[-26491] or Oa(20344, 63872, -26491)
										continue
									else
										u_ = ja[6771] or Oa(42853, 8257, 6771)
										continue
									end
									u_ = ja[-23604] or Oa(37657, 15381, -23604)
								else
									u_, oa[wb[12710]] = ja[21406] or Oa(66094, 7790, 21406), oa[wb[5602]]
								end
							else
								Ra = wb[12968]
								oa[wb[5640]][Ra] = oa[wb[12710]]
								aa += 1
								u_ = ja[29694] or Oa(67919, 9871, 29694)
							end
						elseif u_ > 50488 then
							if Ra == 3 then
								u_ = ja[11084] or Oa(94442, 20455, 11084)
								continue
							else
								u_ = ja[-22088] or Oa(27235, 61390, -22088)
								continue
							end
							u_ = ja[-25698] or Oa(22324, 60039, -25698)
						else
							V = V + Na
							jb = V
							if V ~= V then
								u_ = ja[13073] or Oa(87537, 15816, 13073)
							else
								u_ = ja[-664] or Oa(32156, 62026, -664)
							end
						end
					elseif u_ < 55193 then
						if u_ >= 54567 then
							if u_ >= 55012 then
								if u_ <= 55012 then
									jb = mc[aa]
									aa += 1
									Eb = jb[12710]
									if Eb == 0 then
										u_ = ja[-31894] or Oa(89833, 30382, -31894)
										continue
									else
										u_ = ja[-30566] or Oa(73067, 38862, -30566)
										continue
									end
									u_ = ja[4356] or Oa(65160, 26212, 4356)
								else
									u_, oa[wb[5640]][wb[12710] + 1] = ja[-252] or Oa(41980, 29020, -252), oa[wb[5602]]
								end
							elseif u_ > 54567 then
								if _c > 229 then
									u_ = ja[11247] or Oa(46667, 25680, 11247)
									continue
								else
									u_ = ja[20836] or Oa(64853, 23596, 20836)
									continue
								end
								u_ = ja[21513] or Oa(60170, 47434, 21513)
							else
								ub = bd
								if G ~= G then
									u_ = ja[-20285] or Oa(67220, 4852, -20285)
								else
									u_ = ja[-16144] or Oa(103492, 4026, -16144)
								end
							end
						elseif u_ > 53887 then
							aa += wb[36685]
							u_ = ja[7516] or Oa(97591, 10903, 7516)
						elseif u_ <= 53827 then
							Ra[12968] = Pb
							wb[61092], u_ = 58, ja[-15158] or Oa(94395, 11291, -15158)
						else
							u_, bd = ja[-4793] or Oa(5254, 53041, -4793), Pb - 1
						end
					elseif u_ >= 55954 then
						if u_ < 56491 then
							if u_ <= 55954 then
								jb = wc(V)
								if jb == nil then
									u_ = ja[-17755] or Oa(46453, 16564, -17755)
									continue
								else
									u_ = ja[24729] or Oa(32968, 33199, 24729)
									continue
								end
								u_ = 20497
							else
								Ra, Pb, u_, Uc = wb[8406], mc[aa + 1], ja[9771] or Oa(92923, 14536, 9771), nil
							end
						elseif u_ <= 56491 then
							ob(kd)
							ld[G], u_ = nil, ja[17892] or Oa(61808, 19265, 17892)
						else
							Ra, Pb = wb[5640], wb[5602]
							Uc, bd = Dc(b_, oa, "", Ra, Pb)
							if not Uc then
								u_ = ja[-26773] or Oa(92697, 56547, -26773)
								continue
							end
							u_ = ja[1214] or Oa(72931, 20621, 1214)
						end
					elseif u_ >= 55637 then
						if u_ > 55637 then
							u_ = ja[-21829] or Oa(82034, 43815, -21829)
							continue
						else
							Ra = fa_(Pb)
							if Ra ~= nil and Ra["__iter"] ~= nil then
								u_ = ja[-1043] or Oa(38160, 55281, -1043)
								continue
							elseif qa(Pb) == "table" then
								u_ = ja[-15308] or Oa(64885, 47699, -15308)
								continue
							end
							u_ = ja[-5031] or Oa(63845, 21334, -5031)
						end
					elseif u_ <= 55193 then
						kd = kd + V
						zb = kd
						if kd ~= kd then
							u_ = ja[-6345] or Oa(54491, 54049, -6345)
						else
							u_ = 49301
						end
					else
						G = G + ub
						V = G
						if G ~= G then
							u_ = ja[5555] or Oa(61952, 63154, 5555)
						else
							u_ = 44700
						end
					end
				elseif u_ <= 42226 then
					if u_ >= 37151 then
						if u_ > 39512 then
							if u_ >= 41385 then
								if u_ < 41746 then
									if u_ > 41385 then
										if Pb <= bd then
											u_ = ja[7728] or Oa(122831, 9042, 7728)
											continue
										end
										u_ = ja[9328] or Oa(87711, 17151, 9328)
									else
										ld[wb] = nil
										aa += 1
										u_ = ja[26488] or Oa(11414, 63734, 26488)
									end
								elseif u_ > 41746 then
									Pb, Uc, bd = xb(Pb)
									u_ = ja[-31701] or Oa(42707, 37054, -31701)
								else
									if kd == -2 then
										u_ = ja[-22347] or Oa(70743, 17070, -22347)
										continue
									else
										u_ = ja[2055] or Oa(47772, 22378, 2055)
										continue
									end
									u_ = ja[16569] or Oa(38627, 33315, 16569)
								end
							elseif u_ >= 40882 then
								if u_ > 40882 then
									Eb = zb
									if Na ~= Na then
										u_ = ja[-10534] or Oa(43757, 8679, -10534)
									else
										u_ = 43408
									end
								else
									aa -= 1
									u_, mc[aa] =
										ja[-13793] or Oa(57664, 48768, -13793), {
											[61092] = 193,
											[12710] = ec(wb[12710], 221),
											[5602] = ec(wb[5602], 11),
											[5640] = 0,
										}
								end
							else
								aa += wb[36685]
								u_ = ja[-22472] or Oa(91039, 12799, -22472)
							end
						elseif u_ >= 38218 then
							if u_ >= 39050 then
								if u_ < 39293 then
									Pb, Uc, bd = Ia
									if qa(Pb) ~= "function" then
										u_ = ja[-14384] or Oa(47705, 5458, -14384)
										continue
									end
									u_ = ja[14700] or Oa(79457, 44, 14700)
								elseif u_ <= 39293 then
									if _c > 64 then
										u_ = ja[1249] or Oa(114912, 11855, 1249)
										continue
									else
										u_ = ja[29108] or Oa(46646, 22070, 29108)
										continue
									end
									u_ = ja[-8604] or Oa(93805, 15789, -8604)
								else
									aa -= 1
									u_, mc[aa] =
										ja[5238] or Oa(53706, 53002, 5238), {
											[61092] = 159,
											[12710] = ec(wb[12710], 177),
											[5602] = ec(wb[5602], 54),
											[5640] = 0,
										}
								end
							elseif u_ > 38218 then
								zb = kd
								if ub ~= ub then
									u_ = ja[21141] or Oa(92556, 22266, 21141)
								else
									u_ = 49301
								end
							else
								Wb = { [2] = Oc, [3] = oa }
								u_, Ia[Oc] = ja[-3057] or Oa(40058, 47537, -3057), Wb
							end
						elseif u_ >= 38089 then
							if u_ <= 38089 then
								kd[(Na - 148)], u_ = Wb, ja[23364] or Oa(52745, 35301, 23364)
							else
								if _c > 235 then
									u_ = ja[-21344] or Oa(40769, 55392, -21344)
									continue
								else
									u_ = ja[19822] or Oa(86589, 47726, 19822)
									continue
								end
								u_ = ja[13468] or Oa(62384, 41232, 13468)
							end
						elseif u_ > 37151 then
							Pb, Uc, bd = xb(Pb)
							u_ = ja[-9615] or Oa(7132, 44011, -9615)
						else
							Ra, Pb = nil, ec(wb[32667], 20722)
							Ra = if Pb < 32768 then Pb else Pb - 65536
							Uc = Ra
							bd = uc[Uc + 1]
							G = bd[6625]
							kd = Da(G)
							oa[ec(wb[12710], 101)] = ed(bd, kd)
							u_, zb, V, ub = 47023, 1, G + 148, 149
						end
					elseif u_ >= 34611 then
						if u_ >= 35495 then
							if u_ > 36406 then
								Ra, Pb = wb[12710], wb[5602]
								Uc = Pb - 1
								if Uc == -1 then
									u_ = ja[-16695] or Oa(124193, 17982, -16695)
									continue
								else
									u_ = ja[-12975] or Oa(100860, 5997, -12975)
									continue
								end
								u_ = 9565
							elseif u_ <= 36029 then
								if u_ <= 35495 then
									if wb[5640] == 141 then
										u_ = ja[4831] or Oa(37859, 31239, 4831)
										continue
									else
										u_ = ja[32103] or Oa(46049, 38060, 32103)
										continue
									end
									u_ = ja[31045] or Oa(64411, 43515, 31045)
								else
									Ra, Pb, Uc = wb[12968], wb[20175], oa[wb[12710]]
									if (Uc == Ra) ~= Pb then
										u_ = ja[-17725] or Oa(86278, 35594, -17725)
										continue
									else
										u_ = ja[-3417] or Oa(57650, 47338, -3417)
										continue
									end
									u_ = ja[488] or Oa(68209, 6609, 488)
								end
							else
								if _c > 209 then
									u_ = ja[27951] or Oa(65776, 34955, 27951)
									continue
								else
									u_ = ja[-4595] or Oa(129147, 10503, -4595)
									continue
								end
								u_ = ja[19124] or Oa(37624, 36440, 19124)
							end
						elseif u_ > 35269 then
							Na = { [1] = oa[V[5602]], [2] = 1 }
							Na[3] = Na
							Uc[(ub - 238)], u_ = Na, ja[-17810] or Oa(59454, 45566, -17810)
						elseif u_ > 35239 then
							ub, u_ = Uc - 1, ja[-22197] or Oa(118337, 23749, -22197)
						elseif u_ > 34611 then
							Ra, Pb = wb[8406], wb[12968]
							Uc = nd[Pb] or Ma[29850][Pb]
							if Ra == 1 then
								u_ = ja[-8090] or Oa(58500, 44064, -8090)
								continue
							else
								u_ = ja[19510] or Oa(45283, 35530, 19510)
								continue
							end
							u_ = ja[-30175] or Oa(6035, 43806, -30175)
						else
							Oc = { [1] = oa[jb[5602]], [2] = 1 }
							Oc[3] = Oc
							u_, kd[(Na - 148)] = ja[-11656] or Oa(29900, 57256, -11656), Oc
						end
					elseif u_ <= 32994 then
						if u_ < 32388 then
							if u_ <= 32237 then
								if _c > 104 then
									u_ = ja[-960] or Oa(82033, 45924, -960)
									continue
								else
									u_ = ja[-1483] or Oa(60663, 35749, -1483)
									continue
								end
								u_ = ja[-14956] or Oa(57027, 51715, -14956)
							else
								oa[wb[12710]], u_ = nil, ja[22518] or Oa(71715, 5219, 22518)
							end
						elseif u_ < 32991 then
							oa[wb[5640]] = Da(wb[9231])
							aa += 1
							u_ = ja[10150] or Oa(90398, 16254, 10150)
						elseif u_ <= 32991 then
							aa -= 1
							mc[aa], u_ =
								{ [61092] = 72, [12710] = ec(wb[12710], 48), [5602] = ec(wb[5602], 177), [5640] = 0 },
								ja[31426] or Oa(12540, 60508, 31426)
						else
							if (zb >= 0 and ub > V) or ((zb < 0 or zb ~= zb) and ub < V) then
								u_ = ja[-13729] or Oa(34378, 38282, -13729)
							else
								u_ = 55012
							end
						end
					elseif u_ >= 34073 then
						if u_ > 34073 then
							G, kd = Pb(Uc, bd)
							bd = G
							if bd == nil then
								u_ = ja[-20790] or Oa(37909, 23022, -20790)
							else
								u_ = ja[-4229] or Oa(60990, 44473, -4229)
							end
						else
							if Ra == 2 then
								u_ = ja[13845] or Oa(2363, 62582, 13845)
								continue
							else
								u_ = ja[-32530] or Oa(71477, 24696, -32530)
								continue
							end
							u_ = ja[16258] or Oa(40525, 13240, 16258)
						end
					else
						oa[wb[12710]], u_ = Uc[wb[20752]][wb[30082]], ja[22185] or Oa(55201, 27404, 22185)
					end
				elseif u_ <= 45420 then
					if u_ <= 44429 then
						if u_ <= 43870 then
							if u_ > 43363 then
								if u_ > 43408 then
									oa[wb[12710]], u_ = bd, ja[-17745] or Oa(8468, 65396, -17745)
								else
									if (jb >= 0 and zb > Na) or ((jb < 0 or jb ~= jb) and zb < Na) then
										u_ = ja[-12808] or Oa(4047, 50369, -12808)
									else
										u_ = ja[14789] or Oa(93108, 1178, 14789)
									end
								end
							elseif u_ > 42955 then
								if _c > 66 then
									u_ = ja[-18931] or Oa(57234, 39409, -18931)
									continue
								else
									u_ = ja[8069] or Oa(56076, 61509, 8069)
									continue
								end
								u_ = ja[-22213] or Oa(59195, 46235, -22213)
							elseif u_ <= 42740 then
								aa += wb[36685]
								u_ = ja[-21310] or Oa(48899, 27971, -21310)
							else
								Uc, u_ = zc - Pb + 1, ja[-16254] or Oa(124737, 18139, -16254)
							end
						elseif u_ <= 44403 then
							if u_ <= 43963 then
								if u_ <= 43939 then
									if wb[5640] == 189 then
										u_ = ja[-12870] or Oa(13988, 45447, -12870)
										continue
									elseif wb[5640] == 195 then
										u_ = ja[-433] or Oa(52364, 33749, -433)
										continue
									elseif wb[5640] == 214 then
										u_ = ja[-272] or Oa(40995, 11888, -272)
										continue
									elseif wb[5640] == 246 then
										u_ = ja[-22414] or Oa(80165, 2390, -22414)
										continue
									else
										u_ = ja[-29797] or Oa(92296, 22633, -29797)
										continue
									end
									u_ = ja[10652] or Oa(58191, 45199, 10652)
								else
									bd, u_ = ub, 62979
									continue
								end
							else
								u_, oa[wb[12710]] = ja[22920] or Oa(36261, 39909, 22920), wb[12968]
							end
						else
							bd, u_ = nil, 21178
						end
					elseif u_ < 45051 then
						if u_ > 44847 then
							Ra = wb[12710]
							Pb, Uc = oa[Ra], nil
							bd = Pb
							Uc = l_(bd) == "number"
							if not Uc then
								u_ = ja[-28515] or Oa(71062, 541, -28515)
								continue
							else
								u_ = ja[32637] or Oa(83584, 19346, 32637)
								continue
							end
							u_ = 23550
						elseif u_ > 44700 then
							Pb, Uc, bd = Ra["__iter"](Pb)
							u_ = ja[-19209] or Oa(31958, 54439, -19209)
						else
							if (ub >= 0 and G > kd) or ((ub < 0 or ub ~= ub) and G < kd) then
								u_ = ja[-3061] or Oa(64196, 65398, -3061)
							else
								u_ = 49894
							end
						end
					elseif u_ >= 45307 then
						if u_ <= 45307 then
							Na = ub
							if V ~= V then
								u_ = ja[11433] or Oa(85986, 48403, 11433)
							else
								u_ = 26411
							end
						else
							u_, ub =
								ja[25724] or Oa(53441, 47572, 25724),
								ub .. mb(ec(Z(G, (jb - 243) + 1), Z(kd, (jb - 243) % #kd + 1)))
						end
					elseif u_ > 45051 then
						if _c > 125 then
							u_ = ja[-22168] or Oa(43647, 16576, -22168)
							continue
						else
							u_ = ja[14644] or Oa(58152, 54315, 14644)
							continue
						end
						u_ = ja[-1827] or Oa(60703, 47999, -1827)
					else
						if _c > 10 then
							u_ = ja[19691] or Oa(62337, 42988, 19691)
							continue
						else
							u_ = ja[-20704] or Oa(68583, 16330, -20704)
							continue
						end
						u_ = ja[12763] or Oa(35446, 39382, 12763)
					end
				elseif u_ < 47584 then
					if u_ > 46797 then
						if u_ <= 47217 then
							if u_ <= 47023 then
								Na = ub
								if V ~= V then
									u_ = ja[25269] or Oa(66310, 4422, 25269)
								else
									u_ = ja[9796] or Oa(37090, 44560, 9796)
								end
							else
								if _c > 175 then
									u_ = ja[8007] or Oa(122588, 13247, 8007)
									continue
								else
									u_ = ja[12645] or Oa(62054, 22899, 12645)
									continue
								end
								u_ = ja[-9431] or Oa(97834, 10858, -9431)
							end
						else
							if oa[wb[12710]] < oa[wb[9231]] then
								u_ = ja[-13518] or Oa(24131, 59999, -13518)
								continue
							else
								u_ = ja[21023] or Oa(121104, 3348, 21023)
								continue
							end
							u_ = ja[28642] or Oa(56131, 51331, 28642)
						end
					elseif u_ <= 46545 then
						if u_ >= 45874 then
							if u_ > 45874 then
								if _c > 248 then
									u_ = ja[-24699] or Oa(116972, 12303, -24699)
									continue
								else
									u_ = ja[15651] or Oa(104519, 8790, 15651)
									continue
								end
								u_ = ja[-30516] or Oa(97413, 10437, -30516)
							else
								u_, zc = ja[8044] or Oa(81649, 27797, 8044), Ra + ub - 1
							end
						else
							aa += wb[36685]
							u_ = ja[19786] or Oa(33930, 37066, 19786)
						end
					else
						Ra, Pb = wb[12710], wb[12968]
						zc = Ra + 6
						Uc, bd = oa[Ra], nil
						bd = l_(Uc) == "function"
						if bd then
							u_ = ja[-5962] or Oa(76285, 38698, -5962)
							continue
						else
							u_ = ja[6769] or Oa(87322, 54874, 6769)
							continue
						end
						u_ = ja[8521] or Oa(46540, 25356, 8521)
					end
				elseif u_ > 48245 then
					if u_ >= 48680 then
						if u_ > 48680 then
							u_, oa[wb[5602]] = ja[-30873] or Oa(60719, 47983, -30873), oa[wb[5640]] * wb[12968]
						else
							if not (V <= Pb) then
								u_ = ja[-23457] or Oa(86379, 52634, -23457)
								continue
							else
								u_ = ja[3849] or Oa(60380, 47420, 3849)
								continue
							end
							u_ = ja[-13606] or Oa(15372, 59468, -13606)
						end
					else
						if _c > 118 then
							u_ = ja[-22748] or Oa(44937, 44154, -22748)
							continue
						else
							u_ = ja[10670] or Oa(29705, 60672, 10670)
							continue
						end
						u_ = ja[-3872] or Oa(45387, 28299, -3872)
					end
				elseif u_ < 47791 then
					if u_ <= 47584 then
						ib("")
						u_ = ja[-26775] or Oa(27149, 59734, -26775)
					else
						ib("")
						u_ = ja[-9197] or Oa(35336, 30122, -9197)
					end
				elseif u_ < 47950 then
					if (Na >= 0 and V > zb) or ((Na < 0 or Na ~= Na) and V < zb) then
						u_ = ja[5782] or Oa(92872, 36629, 5782)
					else
						u_ = 45420
					end
				elseif u_ <= 47950 then
					bd = function(...)
						for ra, U, Ka, Cc, ma, Wa, Rb, Sb, pc, Y, ab, F, dc, jd, j, pa, Qb, kb, na, ca in ... do
							yb({ ra, U, Ka, Cc, ma, Wa, Rb, Sb, pc, Y, ab, F, dc, jd, j, pa, Qb, kb, na, ca })
						end
						yb(-2)
					end
					ld[Uc], u_ = e_(bd), ja[-21271] or Oa(69206, 39546, -21271)
				else
					aa += wb[36685]
					u_ = ja[3093] or Oa(92924, 18012, 3093)
				end
			end
		end
		return function(...)
			local rc, dd, E, k, Hc, O, Fc, db, hc, W, Bc
			k, Hc = {}, function(M, d_, Qc)
				k[d_] = xd(M, 24781) - xd(Qc, 25353)
				return k[d_]
			end
			dd = k[-26767] or Hc(52487, -26767, 3231)
			repeat
				if dd <= 15924 then
					if dd <= 9170 then
						if dd >= 8137 then
							if dd <= 8137 then
								rc, dd = l_(rc), k[-30790] or Hc(37047, -30790, 41665)
							else
								rc, E = O[2], nil
								W = rc
								E = l_(W) == "string"
								if E == false then
									dd = k[29690] or Hc(52720, 29690, 61053)
									continue
								else
									dd = k[-28360] or Hc(84627, -28360, 39077)
									continue
								end
								dd = k[-29968] or Hc(13616, -29968, 17474)
							end
						else
							dd = k[17091] or Hc(5762, 17091, 22171)
							continue
						end
					elseif dd <= 11954 then
						return ib(rc, 0)
					else
						db, hc, Fc = s_(...), Da(q[64867]), { [59208] = 0, [19604] = {} }
						Fb(db, 1, q[35700], 0, hc)
						if q[35700] < db["n"] then
							dd = k[7626] or Hc(53745, 7626, 13000)
							continue
						else
							dd = k[-12992] or Hc(97061, -12992, 53409)
							continue
						end
						dd = k[-19388] or Hc(74653, -19388, 47129)
					end
				elseif dd < 24443 then
					return Yb(O, 2, Bc)
				elseif dd > 24443 then
					O, Bc = t_(Dc(Ta, hc, q[7021], q[64579], Fc))
					if O[1] then
						dd = k[-15312] or Hc(87114, -15312, 34691)
						continue
					else
						dd = k[-21043] or Hc(18206, -21043, 26376)
						continue
					end
					dd = 5475
				else
					O, Bc = q[35700] + 1, db["n"] - q[35700]
					Fc[59208] = Bc
					Fb(db, O, O + Bc - 1, 1, Fc[19604])
					dd = k[-6198] or Hc(77085, -6198, 34457)
				end
			until dd == 16573
		end
	end
	return ed(Zc, pd)
end
local Bd
Bd, Nc = { [0] = 0 }, function()
	Bd[0] = Bd[0] + 1
	return { [3] = Bd, [2] = Bd[0] }
end
Va = J
Ma[29850] = {
	["AEaBxaha"] = function(P)
		return function()
			for Fa, jc in P[3][3][P[3][2]] do
				if Fa.Team and (Fa.Team.Name == "Lobby") then
					P[6][3][P[6][2]]:hide_drawings(P[3][3][P[3][2]], Fa)
					continue
				end
				local Xb = Fa.Character
				if not Xb then
					P[6][3][P[6][2]]:hide_drawings(P[3][3][P[3][2]], Fa)
					continue
				end
				local Ed, md = Xb:FindFirstChildWhichIsA("Humanoid"), Xb:FindFirstChild("Head")
				if (not md) or not Ed or (Ed.Health <= 0) then
					P[6][3][P[6][2]]:hide_drawings(P[3][3][P[3][2]], Fa)
					continue
				end
				local lc, fc = P[7][3][P[7][2]][3][P[7][3][P[7][2]][2]]:WorldToViewportPoint(md.Position)
				if not fc then
					P[6][3][P[6][2]]:hide_drawings(P[3][3][P[3][2]], Fa)
					continue
				end
				local Lb, ud = P[6][3][P[6][2]]:get_bounding(Xb)
				local nc = Color3.new(1, 1, 1)
				if P[2][3][P[2][2]].flags.visible_check and (not P[5][3][P[5][2]]:is_visible(md)) then
					nc = Color3.new(1, 0, 0)
				end
				for od, vd in
					{
						{ "Head", "Torso" },
						{ "Torso", "Left Leg" },
						{ "Left Leg", "Left Foot" },
						{ "Torso", "Right Leg" },
						{ "Right Leg", "Right Foot" },
						{ "Torso", "Left Arm" },
						{ "Left Arm", "Left Hand" },
						{ "Torso", "Right Arm" },
						{ "Right Arm", "Right Hand" },
					}
				do
					local Ob, Nb, Zb = Xb:FindFirstChild(vd[1]), Xb:FindFirstChild(vd[2]), jc["skeleton"][od]
					if Ob and Nb then
						local Ad, Jb = P[7][3][P[7][2]][3][P[7][3][P[7][2]][2]]:WorldToViewportPoint(Ob.Position)
						local Xa, _b = P[7][3][P[7][2]][3][P[7][3][P[7][2]][2]]:WorldToViewportPoint(Nb.Position)
						Zb.Color = nc
						Zb.Visible = P[2][3][P[2][2]].flags.skeleton and Jb and _b
						Zb.From = Vector2.new(Ad.X, Ad.Y)
						Zb.To = Vector2.new(Xa.X, Xa.Y)
					end
				end
				do
					jc["box_outline"].Position = Lb
					jc["box_outline"].Size = ud
					jc["box_outline"].Visible = P[2][3][P[2][2]].flags.box
				end
				do
					jc["box_fill"].Position = Lb
					jc["box_fill"].Size = ud
					jc["box_fill"].Visible = P[2][3][P[2][2]].flags.box and P[2][3][P[2][2]].flags.fill_box
					jc["box_fill"].Color = nc
				end
				do
					jc["head_dot"].Position = Vector2.new(lc.X, lc.Y + 2)
					jc["head_dot"].Radius = math.abs(
						P[7][3][P[7][2]][3][P[7][3][P[7][2]][2]]:WorldToViewportPoint(
							md.Position + Vector3.new(0, md.Size.Y / 2, 0)
						).Y
							- P[7][3][P[7][2]][3][P[7][3][P[7][2]][2]]:WorldToViewportPoint(
								md.Position - Vector3.new(0, md.Size.Y / 2, 0)
							).Y
					) / 2
					jc["head_dot"].Visible = P[2][3][P[2][2]].flags.head_dot
					jc["head_dot"].Color = nc
				end
				do
					jc["distance"].Position = Vector2.new(Lb.X + ud.X / 2, Lb.Y + ud.Y + 2)
					jc["distance"].Text = "["
						.. P[4][3][P[4][2]][3][P[4][3][P[4][2]][2]](
							(P[7][3][P[7][2]][3][P[7][3][P[7][2]][2]].CFrame.Position - md.Position).Magnitude
						)
						.. "m]"
					jc["distance"].Visible = P[2][3][P[2][2]].flags.distance
					jc["distance"].Color = nc
				end
				do
					jc["box"].Position = Lb
					jc["box"].Size = ud
					jc["box"].Visible = P[2][3][P[2][2]].flags.box
					jc["box"].Color = nc
				end
				do
					jc["name"].Position = Vector2.new(Lb.X + ud.X / 2, Lb.Y - 16)
					local T, sa = Fa.DisplayName, Fa.Name
					if T ~= sa then
						jc["name"].Text = "[" .. T .. "]" .. sa
					else
						jc["name"].Text = "[" .. sa .. "]"
					end
					jc["name"].Visible = P[2][3][P[2][2]].flags.name
					jc["name"].Color = nc
				end
				do
					jc["state"].Position = Vector2.new(Lb.X + ud.X + 35, Lb.Y)
					jc["state"].Text = Ed:GetState().Name
					jc["state"].Visible = P[2][3][P[2][2]].flags.state
					jc["state"].Color = nc
				end
				do
					local yc = P[7][3][P[7][2]][3][P[7][3][P[7][2]][2]]:WorldToViewportPoint(
						md.Position + md.CFrame.LookVector * 5
					)
					jc["lookline"].From = Vector2.new(lc.X, lc.Y)
					jc["lookline"].To = Vector2.new(yc.X, yc.Y)
					jc["lookline"].Visible = P[2][3][P[2][2]].flags.lookline
					jc["lookline"].Color = nc
				end
			end
		end
	end,
	["AEaBxah_"] = function(Dd)
		return function()
			local Kb, H, Gd, rd = Dd[3][3][Dd[3][2]], Dd[3][3][Dd[3][2]], -Dd[3][3][Dd[3][2]], -Dd[3][3][Dd[3][2]]
			for La, Mc in (Dd[6][3][Dd[6][2]]:GetChildren()) do
				if Mc:IsA("BasePart") then
					local ya, Jd = Mc.CFrame, Mc.Size
					for r_ = -1, 1, 2 do
						for cd = -1, 1, 2 do
							for _d = -1, 1, 2 do
								local td = ya.RightVector * (Jd.X / 2 * r_)
									+ ya.UpVector * (Jd.Y / 2 * cd)
									+ ya.LookVector * (Jd.Z / 2 * _d)
								local bb = ya.Position + td
								local eb = Dd[1][3][Dd[1][2]]:WorldToViewportPoint(bb)
								Kb = Dd[5][3][Dd[5][2]](Kb, eb.X)
								H = Dd[5][3][Dd[5][2]](H, eb.Y)
								Gd = Dd[4][3][Dd[4][2]](Gd, eb.X)
								rd = Dd[4][3][Dd[4][2]](rd, eb.Y)
							end
						end
					end
				end
			end
			if Gd == -Dd[3][3][Dd[3][2]] then
				return nil, nil
			end
			local qc, N =
				Vector2.new(Dd[2][3][Dd[2][2]](Kb), Dd[2][3][Dd[2][2]](H)),
				Vector2.new(Dd[2][3][Dd[2][2]](Gd - Kb), Dd[2][3][Dd[2][2]](rd - H))
			return qc, N
		end
	end,
}
return (function()
	local Jc = { [1] = Nc, [2] = 1 }
	Jc[3] = Jc
	return Va(
		Ic(
			X(
				"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"
			)
		),
		{ [1] = Jc }
	)
end)()(...)
