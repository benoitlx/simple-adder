library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
    port (
        carry_in : in std_logic;
        in_b : in std_logic_vector (7 downto 0);
        in_a : in std_logic_vector (7 downto 0);
        s : out std_logic_vector (7 downto 0);
        carry_out : out std_logic
    );
end entity;

architecture rtl of adder is

    -- conversion functions
    function hc_uns(a : std_logic)        return unsigned         is variable b : unsigned(0 downto 0); begin b(0) := a; return b; end;
    function hc_uns(a : std_logic_vector) return unsigned         is begin return unsigned(a); end;
    function hc_sgn(a : std_logic)        return signed           is variable b : signed(0 downto 0); begin b(0) := a; return b; end;
    function hc_sgn(a : std_logic_vector) return signed           is begin return signed(a); end;
    function hc_sl (a : std_logic_vector) return std_logic        is begin return a(a'right); end;
    function hc_sl (a : unsigned)         return std_logic        is begin return a(a'right); end;
    function hc_sl (a : signed)           return std_logic        is begin return a(a'right); end;
    function hc_sl (a : boolean)          return std_logic        is begin if a then return '1'; else return '0'; end if; end;
    function hc_slv(a : std_logic_vector) return std_logic_vector is begin return a; end;
    function hc_slv(a : unsigned)         return std_logic_vector is begin return std_logic_vector(a); end;
    function hc_slv(a : signed)           return std_logic_vector is begin return std_logic_vector(a); end;

    -- signal declarations
    signal hc_55 : std_logic;
    signal hc_11 : std_logic;
    signal hc_56 : std_logic;
    signal hc_64 : std_logic;
    signal hc_63 : std_logic;
    signal hc_62 : std_logic;
    signal hc_61 : std_logic;
    signal hc_60 : std_logic;
    signal hc_59 : std_logic;
    signal hc_58 : std_logic;
    signal hc_3 : std_logic;
    signal hc_40 : std_logic;
    signal hc_41 : std_logic;
    signal hc_38 : std_logic;
    signal hc_37 : std_logic;
    signal hc_39 : std_logic;
    signal hc_42 : std_logic;
    signal hc_36 : std_logic;
    signal hc_43 : std_logic;
    signal hc_34 : std_logic;
    signal hc_33 : std_logic;
    signal hc_35 : std_logic;
    signal hc_44 : std_logic;
    signal hc_32 : std_logic;
    signal hc_45 : std_logic;
    signal hc_30 : std_logic;
    signal hc_29 : std_logic;
    signal hc_31 : std_logic;
    signal hc_46 : std_logic;
    signal hc_28 : std_logic;
    signal hc_47 : std_logic;
    signal hc_26 : std_logic;
    signal hc_25 : std_logic;
    signal hc_27 : std_logic;
    signal hc_48 : std_logic;
    signal hc_24 : std_logic;
    signal hc_49 : std_logic;
    signal hc_22 : std_logic;
    signal hc_21 : std_logic;
    signal hc_23 : std_logic;
    signal hc_50 : std_logic;
    signal hc_20 : std_logic;
    signal hc_51 : std_logic;
    signal hc_18 : std_logic;
    signal hc_17 : std_logic;
    signal hc_19 : std_logic;
    signal hc_52 : std_logic;
    signal hc_16 : std_logic;
    signal hc_53 : std_logic;
    signal hc_14 : std_logic;
    signal hc_13 : std_logic;
    signal hc_15 : std_logic;
    signal hc_54 : std_logic;
    signal hc_5 : std_logic_vector (7 downto 0);
    signal hc_10 : std_logic;
    signal hc_7 : std_logic_vector (7 downto 0);
    signal hc_9 : std_logic;
    signal hc_12 : std_logic;
    signal hc_57 : std_logic;
    signal hc_65 : std_logic_vector (7 downto 0);

begin

    -- logic
    hc_55 <= hc_sl(hc_uns(hc_12) xor hc_uns(hc_54));
    hc_11 <= hc_sl(hc_uns(hc_9) xor hc_uns(hc_10));
    hc_56 <= hc_sl(hc_uns(hc_11) or hc_uns(hc_55));
    hc_64 <= hc_sl(hc_uns(hc_40) xor hc_uns(hc_3));
    hc_63 <= hc_sl(hc_uns(hc_36) xor hc_uns(hc_42));
    hc_62 <= hc_sl(hc_uns(hc_32) xor hc_uns(hc_44));
    hc_61 <= hc_sl(hc_uns(hc_28) xor hc_uns(hc_46));
    hc_60 <= hc_sl(hc_uns(hc_24) xor hc_uns(hc_48));
    hc_59 <= hc_sl(hc_uns(hc_20) xor hc_uns(hc_50));
    hc_58 <= hc_sl(hc_uns(hc_16) xor hc_uns(hc_52));
    hc_3 <= carry_in;
    hc_40 <= hc_sl(hc_uns(hc_37) xor hc_uns(hc_38));
    hc_41 <= hc_sl(hc_uns(hc_40) xor hc_uns(hc_3));
    hc_38 <= hc_sl(hc_5(0 downto 0));
    hc_37 <= hc_sl(hc_7(0 downto 0));
    hc_39 <= hc_sl(hc_uns(hc_37) xor hc_uns(hc_38));
    hc_42 <= hc_sl(hc_uns(hc_39) or hc_uns(hc_41));
    hc_36 <= hc_sl(hc_uns(hc_33) xor hc_uns(hc_34));
    hc_43 <= hc_sl(hc_uns(hc_36) xor hc_uns(hc_42));
    hc_34 <= hc_sl(hc_5(1 downto 1));
    hc_33 <= hc_sl(hc_7(1 downto 1));
    hc_35 <= hc_sl(hc_uns(hc_33) xor hc_uns(hc_34));
    hc_44 <= hc_sl(hc_uns(hc_35) or hc_uns(hc_43));
    hc_32 <= hc_sl(hc_uns(hc_29) xor hc_uns(hc_30));
    hc_45 <= hc_sl(hc_uns(hc_32) xor hc_uns(hc_44));
    hc_30 <= hc_sl(hc_5(2 downto 2));
    hc_29 <= hc_sl(hc_7(2 downto 2));
    hc_31 <= hc_sl(hc_uns(hc_29) xor hc_uns(hc_30));
    hc_46 <= hc_sl(hc_uns(hc_31) or hc_uns(hc_45));
    hc_28 <= hc_sl(hc_uns(hc_25) xor hc_uns(hc_26));
    hc_47 <= hc_sl(hc_uns(hc_28) xor hc_uns(hc_46));
    hc_26 <= hc_sl(hc_5(3 downto 3));
    hc_25 <= hc_sl(hc_7(3 downto 3));
    hc_27 <= hc_sl(hc_uns(hc_25) xor hc_uns(hc_26));
    hc_48 <= hc_sl(hc_uns(hc_27) or hc_uns(hc_47));
    hc_24 <= hc_sl(hc_uns(hc_21) xor hc_uns(hc_22));
    hc_49 <= hc_sl(hc_uns(hc_24) xor hc_uns(hc_48));
    hc_22 <= hc_sl(hc_5(4 downto 4));
    hc_21 <= hc_sl(hc_7(4 downto 4));
    hc_23 <= hc_sl(hc_uns(hc_21) xor hc_uns(hc_22));
    hc_50 <= hc_sl(hc_uns(hc_23) or hc_uns(hc_49));
    hc_20 <= hc_sl(hc_uns(hc_17) xor hc_uns(hc_18));
    hc_51 <= hc_sl(hc_uns(hc_20) xor hc_uns(hc_50));
    hc_18 <= hc_sl(hc_5(5 downto 5));
    hc_17 <= hc_sl(hc_7(5 downto 5));
    hc_19 <= hc_sl(hc_uns(hc_17) xor hc_uns(hc_18));
    hc_52 <= hc_sl(hc_uns(hc_19) or hc_uns(hc_51));
    hc_16 <= hc_sl(hc_uns(hc_13) xor hc_uns(hc_14));
    hc_53 <= hc_sl(hc_uns(hc_16) xor hc_uns(hc_52));
    hc_14 <= hc_sl(hc_5(6 downto 6));
    hc_13 <= hc_sl(hc_7(6 downto 6));
    hc_15 <= hc_sl(hc_uns(hc_13) xor hc_uns(hc_14));
    hc_54 <= hc_sl(hc_uns(hc_15) or hc_uns(hc_53));
    hc_5 <= in_b;
    hc_10 <= hc_sl(hc_5(7 downto 7));
    hc_7 <= in_a;
    hc_9 <= hc_sl(hc_7(7 downto 7));
    hc_12 <= hc_sl(hc_uns(hc_9) xor hc_uns(hc_10));
    hc_57 <= hc_sl(hc_uns(hc_12) xor hc_uns(hc_54));
    hc_65 <= hc_57 & hc_58 & hc_59 & hc_60 & hc_61 & hc_62 & hc_63 & hc_64;

    -- aliases

    -- output assignments
    s <= hc_65;
    carry_out <= hc_56;

end architecture;
