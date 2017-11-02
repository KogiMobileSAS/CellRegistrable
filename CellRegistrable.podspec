Pod::Spec.new do |s|
  s.name              = 'CellRegistrable'
  s.version           = '2.0.0'
  s.license           = 'MIT'
  s.summary           = 'Adds a simple way to register your cells to `UITableView` and `UICollectionView`'
  s.homepage          = 'https://github.com/KogiMobileSAS/CellRegistrable'
  s.social_media_url  = 'https://twitter.com/kogimobile'
  s.author            = "Kogi Mobile"
  s.source            = { :git => 'https://github.com/KogiMobileSAS/CellRegistrable.git', :tag => s.version }

  s.platform          = :ios, "10.3"

  s.source_files      = 'Source/*.swift'
end
