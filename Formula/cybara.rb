class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2187"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2187/cybara-v1.0.2187-darwin-arm64-cli"; sha256 "f285d0726493a64093b5850b3b57e2c19d2434995dfad7ccb4306849b40f77ba" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2187/cybara-v1.0.2187-darwin-x64-cli"; sha256 "f98922079a539ec6f4c31b309d77448f832fc81ae131cc7c511d51db9e6aedb3" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2187/cybara-v1.0.2187-linux-arm64-cli"; sha256 "cd9bd530ceeefe870ecde4561e8be87aaaad2d52996c0b609d797b24e77120c6" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2187/cybara-v1.0.2187-linux-x64-cli"; sha256 "6a342a3f7e0766b5c6793bf05a4aff3fa92bf88c0cde2513e64500c3543de05c" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
