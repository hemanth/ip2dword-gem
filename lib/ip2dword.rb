require "ipaddr"
class IP2dword
	def self.convert(ip)
		return "Invalid IP" if (IPAddr.new(ip) rescue nil).nil?
		a, b, c, d = ip.split('.').map(&:to_i)
		i = a * 256**3 + b * 256**2 + c * 256 + d
		return {
			"dec" => i.to_s,
			"oct" => i.to_s(8),
			"hex" => i.to_s(16)
		}
	end
end
