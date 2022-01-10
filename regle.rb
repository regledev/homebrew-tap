class Regle < Formula
  desc "Automate your decisions"
  homepage "https://www.regle.dev"
  version "0.1.0"

  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/regledev/homebrew-tap/releases/download/v#{version}/regle_cli_#{version}_aarch64-apple-darwin.tar.gz"
    sha256 "1f91979956d2b8651038ba66163fc155cb8d290ac6c24b1ee1c35a933d7d4191"
  elsif OS.mac?
    url "https://github.com/regledev/homebrew-tap/releases/download/v#{version}/regle_cli_#{version}_x86_64-apple-darwin.tar.gz"
    sha256 "50dca616152fd64b6fbfb2cde63867d825b884eff17f6371a395d24f5210edb0"
  elsif OS.linux? and Hardware::CPU.arm?
    url "https://github.com/regledev/homebrew-tap/releases/download/v#{version}/regle_cli_#{version}_aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d7010119df2a65362227f421f415aa91360468b2d30f02471f60afc50f97e4de"
  elsif OS.linux?
    url "https://github.com/regledev/homebrew-tap/releases/download/v#{version}/regle_cli_#{version}_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "efa4df8c9d1c04039e017315d54042fab86e92631e26b1b892721a2c46124fe5"
  end
  def install
    bin.install "regle"
  end
end
