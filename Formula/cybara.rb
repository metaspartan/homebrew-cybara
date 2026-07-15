class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1580"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1580/cybara-v1.0.1580-darwin-arm64-cli"; sha256 "2494f0a834378d6352c467875a2c1c74f0e42c19ebed938a274057f351f019a4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1580/cybara-v1.0.1580-darwin-x64-cli"; sha256 "b4832b20d82959daed7ca57194499a73d83be550f186b0f538ab42a5876ce4b8" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1580/cybara-v1.0.1580-linux-arm64-cli"; sha256 "daf00aaf70499151c25bb0d374616abe644d23d9b717419c50c7da2e373dbf50" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1580/cybara-v1.0.1580-linux-x64-cli"; sha256 "2bce094b9d1d98e43ac3988fa3eefaf17ca6ce14710e92e34635f5e3dda68330" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
