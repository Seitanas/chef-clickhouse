clickhouse_compression_config 'clickhouse server compression config' do
  service_name 'clickhouse-server-test'
  config <<-CONF
  <yandex>
    <compression>
        <case>
          <!- - Conditions. All must be satisfied. Some conditions may be omitted. - ->
          <min_part_size>10000000000</min_part_size>        <!- - Min part size in bytes. - ->
          <min_part_size_ratio>0.01</min_part_size_ratio>   <!- - Min size of part relative to whole table size. - ->

          <!- - What compression method to use. - ->
          <method>zstd</method>
        </case>
    </compression>
  </yandex>
  CONF
end
