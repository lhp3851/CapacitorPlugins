export interface CapacitorPluginsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;

  log(options: { params: string }): Promise<void>;
}
