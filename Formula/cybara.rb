class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1269"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1269/cybara-v1.0.1269-darwin-arm64-cli"; sha256 "c1bfb035e590bd908d0df956c1b5e2346c76a7b353e832eadf25910c90c54001" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1269/cybara-v1.0.1269-darwin-x64-cli"; sha256 "c5197ec495f89df95fd0773c03fab6cc00cb249d532ab6af1b319ced8a3e0e6f" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1269/cybara-v1.0.1269-linux-arm64-cli"; sha256 "53639b4964cca14370529446e445c11c5a08f34b71ec4e4096e3b0a1d7a535c6" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1269/cybara-v1.0.1269-linux-x64-cli"; sha256 "8c5c80a5b42c09fd49ca1912d872e21b102b9ab2f90655320e21519aec160213" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
