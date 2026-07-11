class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1249"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1249/cybara-v1.0.1249-darwin-arm64-cli"; sha256 "f8241b1641317e82a9806face0278bb62315073617e91460ff8344cf6067ef1d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1249/cybara-v1.0.1249-darwin-x64-cli"; sha256 "911f4efde801225473afd5d50f750dcd03dd5aaeec67fa7c4005335122d4d52c" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1249/cybara-v1.0.1249-linux-arm64-cli"; sha256 "2929f159857d49c1b05eb00ab4a8a782a371dbcfe5b57656943828d737c4f677" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1249/cybara-v1.0.1249-linux-x64-cli"; sha256 "77cfacbd0beb767d152c289b05bdd587c3bf47790ca473553472f6093274c50e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
