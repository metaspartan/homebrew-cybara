class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1364"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1364/cybara-v1.0.1364-darwin-arm64-cli"; sha256 "1716efadbf82a684c1e49aba3a6fbaa0d2df59bab90b97d057dbdd8faa953c44" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1364/cybara-v1.0.1364-darwin-x64-cli"; sha256 "2581a48de369db862c9b4770606fda241dad684054cb03fec7c2388ca41eef8f" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1364/cybara-v1.0.1364-linux-arm64-cli"; sha256 "4dc28f9a65441867b24723c7e4833d2fe0733fc6fb4c5aed0e1d143c94b3f099" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1364/cybara-v1.0.1364-linux-x64-cli"; sha256 "ca53597231964a36c2bb60bd30108aaf6c54ce2c4fa6e3c1cf28347afeaa197d" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
