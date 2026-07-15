class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1597"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1597/cybara-v1.0.1597-darwin-arm64-cli"; sha256 "d349e6834cdd130a1e226d781effb50229472616d4ccb458615f514060658f9a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1597/cybara-v1.0.1597-darwin-x64-cli"; sha256 "f32b97f0a6b3cfd2985337da9bae121c5df14849d67801454049a4fd69e4e9d3" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1597/cybara-v1.0.1597-linux-arm64-cli"; sha256 "a2b860fb461a86cb542eb9f90cd0f9591cfa4e3bee8a3b645a86b98673fc0b9f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1597/cybara-v1.0.1597-linux-x64-cli"; sha256 "26189e9dde79413a85615fb67aee8133a01bc34f60e3db93672f420af5002700" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
