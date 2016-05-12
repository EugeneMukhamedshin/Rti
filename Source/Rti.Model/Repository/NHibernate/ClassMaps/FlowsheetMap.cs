namespace Rti.Model.Repository.NHibernate.ClassMaps
{
    partial class FlowsheetMap
    {
        protected override void OnInitialized()
        {
            base.OnInitialized();
            //HasOne(o => o.Drawing).ForeignKey("drawing_id").PropertyRef(o => o.Flowsheet).Fetch.Join();
        }
    }
}