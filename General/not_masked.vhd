-------------------------------------------------------------------
-- company : ruhr university bochum
-- author  : amir moradi (amir.moradi@rub.de)
-- document: https://eprint.iacr.org/2021/569/
-- -----------------------------------------------------------------
--
--
-- copyright (c) 2021, david knichel, amir moradi, nicolai m�ller, pascal sasdrich
--
-- all rights reserved.
--
-- this software is provided by the copyright holders and contributors "as is" and
-- any express or implied warranties, including, but not limited to, the implied
-- warranties of merchantability and fitness for a particular purpose are
-- disclaimed. in no event shall the copyright holder or contributers be liable for any
-- direct, indirect, incidental, special, exemplary, or consequential damages
-- (including, but not limited to, procurement of substitute goods or services;
-- loss of use, data, or profits; or business interruption) however caused and
-- on any theory of liability, whether in contract, strict liability, or tort
-- (including negligence or otherwise) arising in any way out of the use of this
-- software, even if advised of the possibility of such damage.
--
-- please see license and readme for license and further instructions.
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity not_masked is
    generic(
        LOW_LATENCY    : integer := 1;  -- dummy
        SECURITY_ORDER : integer := 1;  -- d
        PIPELINE       : integer := 1
    ); -- 0/1
    port(
        a : in  std_logic_vector(SECURITY_ORDER downto 0);
        b : out std_logic_vector(SECURITY_ORDER downto 0)
    );
end not_masked;

architecture behavioral of not_masked is
begin

    b(0)                       <= not a(0);
    b(SECURITY_ORDER downto 1) <= a(SECURITY_ORDER downto 1);

end behavioral;
