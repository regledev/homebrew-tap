class Regle < Formula
  desc "Automate your decisions"
  homepage "https://www.regle.dev"
  version "0.1.0"

  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/regledev/homebrew-tap/releases/download/v#{version}/regle_cli_#{version}_aarch64-apple-darwin.tar.gz"
    sha256 "293bcc6b1b07c88f14374e99dda7253a36575e82c414a2f86693f0c7aefa28de"
  elsif OS.mac?
    url "https://github.com/regledev/homebrew-tap/releases/download/v#{version}/regle_cli_#{version}_x86_64-apple-darwin.tar.gz"
    sha256 "d749b94fabd3cd6461f23e2db63aaa8e3465c501c3d8812f7a0e9bebc0e010bb"
  elsif OS.linux? and Hardware::CPU.arm?
    url "https://github.com/regledev/homebrew-tap/releases/download/v#{version}/regle_cli_#{version}_aarch64-unknown-linux-gnu.tar.gz"
    sha256 "39e4a6e836a9a63ae60147922197e7661f1e9c860085f4360820eb35ff77cd0f"
  elsif OS.linux?
    url "https://github.com/regledev/homebrew-tap/releases/download/v#{version}/regle_cli_#{version}_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4b151e1115474ae9d1013698041a94cb17cd707847efd52f29050ebaf2702ceb"
  end
  def install
    bin.install "regle"
  end
end
