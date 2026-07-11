class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1307"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1307/cybara-v1.0.1307-darwin-arm64-cli"; sha256 "86730520e0ff105efc8dc67a64a9b80859fae7779152bb01e847bfe75e3df693" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1307/cybara-v1.0.1307-darwin-x64-cli"; sha256 "f0293d577388407fe45f27361c8acf2b92999a2084d149552907a8ceb5783289" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1307/cybara-v1.0.1307-linux-arm64-cli"; sha256 "6975b13ba90bffea0e0972d7be5f260f8b6f65fdbedfe06869108b13d812a788" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1307/cybara-v1.0.1307-linux-x64-cli"; sha256 "bc368ce446f96f242d0ce36f8fef09858b344bfda6e5dcd42ad1d893819ef531" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
